import 'package:flutter/material.dart';

class HomePage6 extends StatelessWidget {
  const HomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    // lista de 100 itens (0 a 99)
    final List<int> items = List.generate(100, (index) => index);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 8.0, 
            mainAxisSpacing: 8.0, 
          ),
          itemCount: items.length, 
          
          itemBuilder: (BuildContext context, int index) {
            
            // Se o índice dividido por 2 tiver resto 0 (for par), é VERDE.
            // Se o resto for 1 (for ímpar), é VERMELHO.
            final bool isEvenNumber = index % 2 == 0; 
            
            final Color cardColor = isEvenNumber ? Colors.green : Colors.red;
            
            return Card(
              color: cardColor,
              elevation: 4.0,
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}