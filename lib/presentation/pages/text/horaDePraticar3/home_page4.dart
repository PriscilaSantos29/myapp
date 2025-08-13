import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Exemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp(), // Chama a tela com o Drawer
    );
  }
}
