import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
  Center(
  child: Text.rich(
    TextSpan(
      style: TextStyle(fontSize: 18, color: Colors.black),
      children: [
        TextSpan(text: 'Olá, '),
        TextSpan(
          text: 'Mundo!',
          style: TextStyle(color: Colors.red),
        ),
      ],
    ),
  ),
),
    Center(child: Text('Você está na Tela 2')),
    Center(child: Text('Você está na Tela 3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP',
        style: TextStyle(
            color: Colors.white, // <- força o texto branco
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
backgroundColor: Color.fromARGB(255, 214, 228, 241),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}