import 'package:doguito_petshop/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class SignUpPage extends StatefulWidget {
  final Function() onClickedSignIn;
  const SignUpPage({Key? key, required this.onClickedSignIn}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 50,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 61, 187, 245),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                "Cadastro",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Form(
                // key: _formKey,
                child: Column(
                  children: [
                    // TextFormField(
                    //   autofocus: true,
                    //   style: TextStyle(color: Colors.white),
                    //   decoration: InputDecoration(
                    //     labelText: "Nome Completo",
                    //     labelStyle: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //     prefixIcon: Icon(
                    //       Icons.person,
                    //       color: Colors.white,
                    //     ),
                    //     focusedBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //     enabledBorder: UnderlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    TextFormField(
                      controller: emailController,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 15,
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.vpn_key_sharp,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: signUp,
                child: Text("Cadastrar"),
                // color: CustomColors().getActiveSecondaryButton(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    text: 'Já possui uma conta? ',
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onClickedSignIn,
                          text: 'Iniciar Sessão',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ))
                    ]),
              )
            ]),
          ),
        ),
      );
  Future signUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
