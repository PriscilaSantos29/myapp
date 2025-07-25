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
            const UserAccountsDrawerHeader(
              accountEmail: Text('faguanil@gmail.com'),
              accountName: Text("Fábio Junior Alves"),
              currentAccountPicture: CircleAvatar(
                child: Text('F.JR.A.'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Minha conta'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text("Meus pedidos"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favoritos"),
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