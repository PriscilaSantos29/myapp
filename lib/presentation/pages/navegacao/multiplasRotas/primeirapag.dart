/*import 'package:flutter/material.dart';
class PrimeiraPag extends StatelessWidget {
const PrimeiraPag({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
automaticallyImplyLeading: false,

backgroundColor: Colors.blue,
title: const Text("PRIMEIRA PÁGINA",
style: TextStyle(color: Colors.white)),
),
body: Center(
child: ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
child: Text(
'Ir Para Segunda Página',
style: TextStyle(color: Colors.white),
),
onPressed: () {
// COMPLETAR O CÓDIGO AQUI
},
),
));
}
}*/
import 'package:flutter/material.dart';

class PrimeiraPag extends StatelessWidget {
  const PrimeiraPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          "PRIMEIRA PÁGINA",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: const Text(
            'Ir Para Segunda Página',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}