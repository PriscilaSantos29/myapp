import 'package:flutter/material.dart';

class Atividade1 extends StatelessWidget {
  const Atividade1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MEU APP')),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Container(
          width: 310,
          height: 310,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red, width: 3),
          ),
          child: const Text('Olá Mundo!'),
        ),
      ),
    );
  }
}