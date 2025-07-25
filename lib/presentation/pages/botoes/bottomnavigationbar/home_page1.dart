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
      body: const Center(
        child: Text(
          "OLÁ",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Minha Conta",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ]),
    );
  }
}