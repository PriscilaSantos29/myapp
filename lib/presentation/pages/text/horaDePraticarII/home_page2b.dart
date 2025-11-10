import 'package:flutter/material.dart';

class HomePage2b extends StatelessWidget {
  const HomePage2b({super.key});

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
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('José'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Paulo'),
          ),
        ],
      ),
    );
  }
}
