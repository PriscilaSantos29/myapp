import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              accountName: const Text(
                "Fábio Junior Alves",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text("fganul@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "F.JR.A.",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text("Curso de Flutter"),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text("Curso de PHP"),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text("Curso de JAVA"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Conteúdo principal"),
      ),
    );
  }
}
