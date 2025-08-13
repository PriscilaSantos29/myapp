import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/navegacao/exercicio5/drawer.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Conta'),
        backgroundColor: Colors.green,
      ),
      drawer: const MenuDrawer(),
      body: const Center(
        child: Text('Estou na Minha Conta'),
      ),
    );
  }
}