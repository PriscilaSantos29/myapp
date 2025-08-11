/*import 'package:flutter/material.dart';
class SegundaPag extends StatelessWidget {
const SegundaPag({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
automaticallyImplyLeading: false,
backgroundColor: Colors.red,
title:
const Text("SEGUNDA PÁGINA", style: TextStyle(color: Colors.white)),
),

body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
child: Text(
'Retornar Para Primeira Página',
style: TextStyle(color: Colors.white),
),
onPressed: () {
// COMPLETAR O CÓDIGO AQUI
},
),
SizedBox(height: 20),
ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
child: Text(
'Ir Para Terceira Página',
style: TextStyle(color: Colors.white),
),
onPressed: () {
// COMPLETAR O CÓDIGO AQUI
},
),
],
),
),
);
}
}*/
import 'package:flutter/material.dart';

class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text(
          "SEGUNDA PÁGINA",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Retornar Para Primeira Página',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Ir Para Terceira Página',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/terceira');
              },
            ),
          ],
        ),
      ),
    );
  }
}