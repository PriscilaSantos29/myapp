import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MEU APP"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.all(20),
        child: Center(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3, // 3 colunas
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: const [
              QuadradoCor(Colors.red),
              QuadradoCor(Colors.yellow),
              QuadradoCor(Colors.purple),
              QuadradoCor(Colors.blue),
              QuadradoCor(Colors.pink),
              QuadradoCor(Colors.brown),
              QuadradoCor(Colors.green),
              QuadradoCor(Colors.orange),
              QuadradoCor(Colors.black),
          ],
        ),
      ),
      ),
    );
  }
}

class QuadradoCor extends StatelessWidget {
  final Color cor;
  const QuadradoCor(this.cor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: cor,
    );
  }
}