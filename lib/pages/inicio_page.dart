import 'package:doguito_petshop/app_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  bool isDarkTheme = false;

  get onTabTapped => null;
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Email'), accountEmail: Text(user.email!)),
            Container(height: 40),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Categorias'),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/categorias');
              },
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text('Mais'),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/mais');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Finalizar Sessão'),
              onTap: () => FirebaseAuth.instance.signOut(),
            ),
          ],
        )),
        appBar: AppBar(
          title: Center(
              child: Text('Bem Vindo',
                  style: TextStyle(color: Colors.blueAccent))),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.blueAccent),
          actions: [CustomSwitch()],
        ),
        body: SafeArea(
            child: Column(children: [
          Container(
            height: 10,
          ),
          Container(
            child: Text('Produtos Recomendados',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/img/produto.jpg'),
                      ),
                      Text('Ração 3Kg Mockup'),
                      Text('Salmão com arroz'),
                      Text('RS 50,00'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Text('Serviços',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          Container(
              child: Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/banho-e-tosa.jpg'),
                        ),
                        Text('Banho e Tosa'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/farmacia.jpg'),
                        ),
                        Text('Fármacia'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/veterinario.jpg'),
                        ),
                        Text('Veterinário'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/pet-sitter.jpg'),
                        ),
                        Text('Pet Sitter'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 320,
                          child: Image.asset('assets/img/hospedagem.jpg'),
                        ),
                        Text('Hospedagem'),
                      ],
                    ),
                  ),
                ]),
          )),
        ])));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
