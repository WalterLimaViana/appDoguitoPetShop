import 'package:flutter/material.dart';

class MaisPage extends StatefulWidget {
  const MaisPage({Key? key}) : super(key: key);

  @override
  State<MaisPage> createState() => _MaisPageState();
}

class _MaisPageState extends State<MaisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doguito PetShop'),
      ),
    );
  }
}
