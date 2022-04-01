import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  const ServicosPage({Key? key}) : super(key: key);

  @override
  State<ServicosPage> createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
      ),
    );
  }
}
