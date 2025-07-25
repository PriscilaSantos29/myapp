import 'package:flutter/material.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        title: const Text("MEU APP", style: TextStyles.appBarTitle),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: [
              TextSpan(
                text: 'Este é um texto ',
              ),
              TextSpan(
                text: 'com destaque',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text:
                    ' em vermelho e com tamanho de fonte maior. E aqui temos ',
              ),
              TextSpan(
                text: 'outro destaque',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' em azul e com tamanho de fonte um pouco menor.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
