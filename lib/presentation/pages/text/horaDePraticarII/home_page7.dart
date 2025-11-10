import 'package:flutter/material.dart';

class HomePage7 extends StatelessWidget {
const HomePage7({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('MEU APP'),
backgroundColor: Colors.blue,
),
body: Container(
color: Colors.blue.shade100,
padding: const EdgeInsets.all(8),
child: Column(
children: [
_card('Ana da Silva', 'Técnico em Informática'),
const SizedBox(height: 10),
_card('Antônio Moreira', 'Sistema de Informação'),
],
),
),
);
}
Widget _card(String nome, String curso) {
return Card(
color: Colors.grey.shade300,
child: ListTile(
leading: const Icon(Icons.person),
title: Text(nome),
subtitle: Text(curso),
trailing: ElevatedButton(
onPressed: () {},
child: const Text('Mais Informações'),
),
),
);
}
}
