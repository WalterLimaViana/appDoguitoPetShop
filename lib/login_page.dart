// ignore_for_file: prefer_const_constructors

import 'package:doguito_petshop/sign_up_page.dart';
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 61, 187, 245),
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Colors.black().getGradientMainColor(),
          //     CustomColors().getGradientSecondaryColor(),
          //   ],
          // ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 7,
                ),
                child: Image.asset(
                  "assets/img/logo.png",
                  height: 125,
                ),
              ),
              Text(
                "Doguito Petshop",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                // key: _formKey,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
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
                        labelText: 'Email',
                      ),
                    ),
                    // TextFormField(
                    //   // validator: (value) {
                    //   //   if (value.length < 5) {
                    //   //     return "Esse e-mail parece curto demais";
                    //   //   } else if (!value.contains("@")) {
                    //   //     return "Esse e-mail está meio estranho, não?";
                    //   //   }
                    //   //   return null;
                    //   // },
                    //   // controller: _mailInputController,
                    //   autofocus: true,
                    //   style: TextStyle(color: Colors.white),
                    //   decoration: InputDecoration(
                    //     labelText: "E-mail",
                    //     labelStyle: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //     prefixIcon: Icon(
                    //       Icons.mail_outline,
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
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
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
                          labelText: 'Senha'),
                    ),
                    // TextFormField(
                    //   // validator: (value) {
                    //   //   if (value.length < 6) {
                    //   //     return "A senha deve ter pelo menos 6 caracteres";
                    //   //   }
                    //   //   return null;
                    //   // },
                    //   // obscureText: _obscurePassword,
                    //   // controller: _passwordInputController,
                    //   style: TextStyle(color: Colors.white),
                    //   decoration: InputDecoration(
                    //     labelText: "Senha",
                    //     labelStyle: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //     prefixIcon: Icon(
                    //       Icons.vpn_key_sharp,
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
                    // )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              // Row(
              //   children: [
              //     Checkbox(
              //       value: this._obscurePassword,
              //       onChanged: (bool newValue) {
              //         setState(() {
              //           this._obscurePassword = newValue;
              //         });
              //       },
              //       activeColor: Colors.blue,
              //     ),
              //     Text(
              //       "Mostrar senha",
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     )
              //   ],
              // ),
              ElevatedButton(
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
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                "Ainda não tem uma conta?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Text("Cadastre-se"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Center(
        //       child: Text(
        //     'Doguito PetShop Delivery',
        //     style: TextStyle(color: Colors.white),
        //   )),
        // ),
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
