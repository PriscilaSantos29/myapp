import 'package:flutter/material.dart';

class HomePage2a extends StatelessWidget {
  const HomePage2a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEU APP',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Maria'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('José'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Paulo'),
          ),
        ],
      ),
    );
  }
}
