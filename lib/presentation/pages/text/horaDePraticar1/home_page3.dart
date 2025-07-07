import 'package:flutter/material.dart';

class Atividade3 extends StatelessWidget {
  const Atividade3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MEU APP')),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Transform.rotate(
          angle: -0.2, // valor em radianos (~-11.5 graus)
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.6),
                  offset: const Offset(10, 10),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.green.withOpacity(0.6),
                  offset: const Offset(-10, -10),
                  blurRadius: 20,
                ),
              ],
            ),
            child: const Text('Olá Mundo'),
          ),
        ),
      ),
    );
  }
}
