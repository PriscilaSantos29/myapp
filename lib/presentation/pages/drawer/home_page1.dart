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
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
            color: Colors.white), // Define a cor do ícone do AppBar
      ),
      drawer: Drawer(
        // // Adiciona um ListView ao drawer.
        child: ListView(
          // Importante: Remova qualquer preenchimento do ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Home'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Olá Mundo Sejam Bem Vindos!',
          style: TextStyles.bodyLarge,
        ),
      ),
    );
  }
}
