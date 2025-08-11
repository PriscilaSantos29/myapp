import 'package:flutter/material.dart';
//import 'presentation/pages/url/home_page1.dart';
import 'presentation/pages/navegacao/multiplasRotas/primeirapag.dart';

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
      home: PrimeiraPag(),
    );
  }
}
