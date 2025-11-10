import 'package:flutter/material.dart';


class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});


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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.red,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Letra A',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Letra B',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Letra C',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
