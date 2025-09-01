import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
const HomePage({super.key});
@override
State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
// Variável booleana para controlar a visibilidade do texto
bool _isTextVisible = true;
// Variável para contar os cliques totais
int _totalClicks = 0;
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color.fromARGB(255, 240, 248, 255),
appBar: AppBar(
backgroundColor: Colors.blue,
title: const Text(
"Controle de Visibilidade",
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
centerTitle: true,
),
body: Padding(
padding: const EdgeInsets.all(20.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// Container para o texto que aparece/desaparece
Container(
height: 100,
width: double.infinity,
child: Center(
child: _isTextVisible
? const Text(
"Texto Visível!",

style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: Colors.blue,
),
)
: const SizedBox.shrink(),
),
),
const SizedBox(height: 30),
// Container para exibir o total de cliques
Container(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: Colors.grey.shade100,
borderRadius: BorderRadius.circular(8),
border: Border.all(color: Colors.grey.shade300),
),
child: Text(
"Total de cliques: $_totalClicks",
style: const TextStyle(
fontSize: 18,
fontWeight: FontWeight.w600,
color: Colors.black87,
),
),
),
const SizedBox(height: 40),
// Botão "Exibir/Esconder Texto"
SizedBox(
width: double.infinity,
height: 50,
child: ElevatedButton(
onPressed: () {
setState(() {
_isTextVisible = !_isTextVisible;
_totalClicks++;
});
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue,
foregroundColor: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),

),
elevation: 3,
),
child: Text(
_isTextVisible ? "Esconder Texto" : "Exibir Texto",
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),
),
const SizedBox(height: 15),
// Botão "Contar Clics"
SizedBox(
width: double.infinity,
height: 50,
child: ElevatedButton(
onPressed: () {
setState(() {
_totalClicks++;
});
// Mostrar um SnackBar com o número atual de cliques
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text(
"Clique registrado! Total: $_totalClicks",
style: const TextStyle(fontWeight: FontWeight.bold),
),
backgroundColor: Colors.green,
duration: const Duration(seconds: 1),
behavior: SnackBarBehavior.floating,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.green,
foregroundColor: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
elevation: 3,

),
child: const Text(
"Contar Clics",
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),
),
],
),
),
);
}
}