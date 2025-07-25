import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:AppColors.backgroundColorScaffold,
      appBar:  AppBar(
       backgroundColor:  const Color.fromARGB(255, 0, 195, 255),
        title: Text("InkWell - Exemplo 1",
        style: TextStyles.appBarTitle,
        ),
        centerTitle: true,
      ),

      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Você tocou no InkWell!')),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 183, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Clique aqui',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}