// ignore_for_file: file_names, camel_case_types
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:myapp/src/pages/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/pages/auth/newUser_page.dart';
import 'package:myapp/src/pages/base/base_page.dart';
import 'components/custom_text_field.dart';

class loginPage extends StatefulWidget {
  const loginPage({
    super.key,
  });

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final LoginController _ = Get.put(LoginController());

  @override
  void initState() {
    _.userName.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 19, 133, 62),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
// Logo e estilização
                    const Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 40),
                        children: [
                          TextSpan(
                            text: 'Seu',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '.App',
                            style: TextStyle(
                              color: Color.fromARGB(255, 150, 21, 21),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
//Texto inferior do logo - LabelFade
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 21),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Seu aplicativo'),
                            FadeAnimatedText('so seu jeito'),
                            FadeAnimatedText(' '),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
//formulario inferior(branco)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,

//arredondamento superior do box inferior da tela de login
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
//alinhamento dos campos (botões aqui)
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
//email
                    CustomTextFild(
                      textController: _.userName.value,
                      icon: Icons.email,
                      label: 'E-mail',
                      inputFormatters: const [],
                    ),

//senha
                    const CustomTextFild(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                      inputFormatters: [],
                    ),

//botão entrar
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                18), //arredondamento do botão entrar
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return const BasePage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
//Botão de texto 'esqueceu a senha' e alinhamento para a direita
                    Align(
                      alignment: Alignment.centerRight,
//botão esqueceu a senha
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 19, 133, 62),
                          ),
                        ),
                      ),
                    ),
//linha 'ou'
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 19, 133, 62),
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 13),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 19, 133, 62),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
//Botão novo cadastro
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 19, 133, 62),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return NewUser();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Novo cadastro',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
