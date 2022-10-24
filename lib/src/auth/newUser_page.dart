// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myapp/src/auth/components/custom_text_field.dart';

class NewUser extends StatelessWidget {
  NewUser({super.key});

  final cpfFormat = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );
  final phoneFormat = MaskTextInputFormatter(
    mask: '## # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 133, 62),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Novo cadastro',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomTextFild(
                          icon: Icons.person_pin,
                          label: 'Nome',
                          inputFormatters: [],
                        ),
                        CustomTextFild(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormat],
                        ),
                        CustomTextFild(
                          icon: Icons.credit_card,
                          label: 'CPF',
                          inputFormatters: [cpfFormat],
                        ),
                        const CustomTextFild(
                          icon: Icons.email,
                          label: 'E-mail',
                          inputFormatters: [],
                        ),
                        const CustomTextFild(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                          inputFormatters: [],
                        ),
                        //botão entrar
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
