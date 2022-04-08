import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 50,
        ),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                    TextFormField(
                      // validator: (value) {
                      //   if (value.length < 10) {
                      //     return "Digite um nome maior";
                      //   }
                      //   return null;
                      // },
                      // controller: _nameInputController,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Nome Completo",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
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
                    TextFormField(
                      // validator: (value) {
                      //   if (value.length < 5) {
                      //     return "Esse e-mail parece curto demais";
                      //   } else if (!value.contains("@")) {
                      //     return "Esse e-mail está meio estranho, não?";
                      //   }
                      //   return null;
                      // },
                      // controller: _mailInputController,
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
                      // validator: (value) {
                      //   if (value.length < 6) {
                      //     return "A senha deve ter pelo menos 6 caracteres";
                      //   }
                      //   return null;
                      // },
                      // controller: _passwordInputController,
                      // obscureText: (this.showPassword == true) ? false : true,
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
                    // (this.showPassword == false)
                    //     ?
                    TextFormField(
                      // validator: (value) {
                      //   if (value != _passwordInputController.text) {
                      //     return "As senhas devem ser iguais";
                      //   }
                      //   return null;
                      // },
                      // controller: _confirmInputController,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Confirme a Senha",
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
                    )
                    // :
                    // Container(),
                    // Row(
                    //   children: [
                    //     Checkbox(
                    //       value: this.showPassword,
                    //       onChanged: (bool newValue) {
                    //         setState(() {
                    //           this.showPassword = newValue;
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
                onPressed: () {
                  // _doSignUp();
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text("Cadastrar"),
                // color: CustomColors().getActiveSecondaryButton(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
