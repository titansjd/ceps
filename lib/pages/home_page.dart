import 'package:flutter/material.dart';
import 'package:geracao_ceps/models/cep_model.dart';

import 'package:geracao_ceps/utils/util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final entradasEC = TextEditingController();
  final saidasCommitEC = TextEditingController();
  final saidasRollbackEC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de scripts de CEP'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                controller: entradasEC,
                maxLines: 6,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:
                        'Informe uma lista de ceps. Ex: 53437470,53437470,53437472'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe pelo menos um cep';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 40,
                height: 45,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      setState(() {
                        isLoading = true;
                      });

                      bool isFormValid =
                          formKey.currentState?.validate() ?? false;

                      List<CepModel> cepList = List.empty(growable: true);

                      if (isFormValid) {
                        final ceps = Util.ceps(entradasEC.text.trim());

                        for (String cep in ceps) {
                          final objCep = await Util.searchCep(cep);

                          cepList.add(objCep);
                        }

                        saidasCommitEC.text =
                            CepModel.toScriptCommitOracle(cepList);

                        saidasRollbackEC.text =
                            CepModel.toScriptRollbackOracle(cepList);
                      }
                    } finally {
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                  child: isLoading
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Aguarde, processando...')
                          ],
                        )
                      : const Text('Gerar Script'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Script commit gerados',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              TextFormField(
                controller: saidasCommitEC,
                minLines: 10,
                maxLines: 15,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Script rollback gerados',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              TextFormField(
                controller: saidasRollbackEC,
                minLines: 10,
                maxLines: 15,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
