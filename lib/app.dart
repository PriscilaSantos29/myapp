import 'package:flutter/material.dart';
//import 'presentation/pages/text/horaDePraticar4/home_page5.dart';
import 'presentation/pages/text/horaDePraticar6/home_page1.dart';

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
      home: HomePage(),
    );
  }
}