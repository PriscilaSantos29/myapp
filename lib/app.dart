import 'package:flutter/material.dart';
// import 'presentation/pages/stack/home_page3.dart';
//import 'presentation/pages/text/horaDePraticar1/Atividade1.dart';
 import 'presentation/pages/text/horaDePraticar2/home_page3.dart';
//import 'presentation/pages/botoes/elevatedbutton/home_page2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: HomePage(),
      home: HomePage(),
    );
  }
}
