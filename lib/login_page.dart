// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/img/logo.png'),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
              Container(
                height: 30,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
              ),
              Container(
                height: 30,
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {
                  if (email == 'walter.lima.viana@gmail.com' &&
                      password == '123456') {
                    //Passar para outra tela manualmente utilizando o Navigator:
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                    //Utilizando as rotas:
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    //Mensagem de erro aparecendo no final da barra
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Usuário ou senha incorreta')));
                  }
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Doguito PetShop Delivery')),
        ),
        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(97, 208, 231, 252),
            ),
            _body(),
          ],
        ));
  }
}
