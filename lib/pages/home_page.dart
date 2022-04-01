import 'package:doguito_petshop/pages/inicio_page.dart';
import 'package:doguito_petshop/pages/mais_page.dart';
import 'package:doguito_petshop/pages/produtos_page.dart';
import 'package:doguito_petshop/pages/servicos_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    InicioPage(),
    ProdutosPage(),
    ServicosPage(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pets,
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
                label: 'Produtos'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_services_sharp,
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
                label: 'Serviços'),
          ]),
    );
  }
}
