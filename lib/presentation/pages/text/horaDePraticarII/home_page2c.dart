import 'package:flutter/material.dart';


class HomePage2c extends StatelessWidget {
  const HomePage2c({super.key});


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
            leading: CircleAvatar(
              child: Text('A'),
            ),
            title: Text('Arroz'),
            trailing: Text('21.0'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('M'),
            ),
            title: Text('Macarrão'),
            trailing: Text('9.75'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('M'),
            ),
            title: Text('Massa de Tomate'),
            trailing: Text('4.3'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('F'),
            ),
            title: Text('Farinha'),
            trailing: Text('6.0'),
          ),
        ],
      ),
    );
  }
}
