import 'package:flutter/material.dart';
//import 'presentation/pages/url/home_page1.dart';
//import 'presentation/pages/navegacao/multiplasRotas/primeirapag.dart';
import 'presentation/pages/navegacao/exercicio5/paginaInicial.dart';
import 'presentation/pages/navegacao/exercicio5/minhaConta.dart';
import 'presentation/pages/navegacao/exercicio5/contato.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Paginainicial(),
        '/minhaConta': (context) => const MinhaConta(),        
        '/contato': (context) => const Contato() ,
      },
    );
  }
}
