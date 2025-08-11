/*import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const MyApp());
}*/
import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/navegacao/multiplasRotas/rotas.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação com Múltiplas Rotas',
      debugShowCheckedModeBanner: false,
      routes: Rotas.obterRotas(), // aqui usamos o arquivo rotas.dart
      initialRoute: '/',
    );
  }
}




