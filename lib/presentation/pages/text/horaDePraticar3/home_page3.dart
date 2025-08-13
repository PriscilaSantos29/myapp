import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // fundo azul
        title: const Text(
          'MEU APP',
          style: TextStyle(
            color: Colors.white, // título branco
          ),
        ),
      ),
      body: Container(
        color: Colors.blue[50], // cor de fundo clara
        child: Center(
          child: Container(
            width: 190,
            height: 190,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green), // borda verde
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              width: 190,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
