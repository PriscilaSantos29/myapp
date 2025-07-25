import 'package:flutter/material.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("MEU APP", style: TextStyles.appBarTitle),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Botão Pressionado!');
          },
          splashColor: Colors.orange,
          child: Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.green],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Text(
                'Clique Aqui',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}