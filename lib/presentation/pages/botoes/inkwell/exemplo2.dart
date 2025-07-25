import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell - Exemplo 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const InkWellExampleHome(),
    );
  }
}

class InkWellExampleHome extends StatefulWidget {
  const InkWellExampleHome({super.key});

  @override
  State<InkWellExampleHome> createState() => _InkWellExampleHomeState();
}

class _InkWellExampleHomeState extends State<InkWellExampleHome> {
  double boxSize = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroundColorScaffold,
      appBar:  AppBar(
       backgroundColor: Colors.deepPurple,
        title: Text("InkWell - Exemplo 2",
        style: TextStyles.appBarTitle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: boxSize,
          height: boxSize,
          child: Material(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              splashColor: Colors.white24,
              onTap: () {
                setState(() {
                  boxSize = boxSize == 100 ? 150 : 100;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('InkWell ativado!')),
                );
              },
              child: const Center(
                child: Text(
                  'Toque aqui',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
