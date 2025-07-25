import 'package:flutter/material.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        title: const Text("MEU APP", style: TextStyles.appBarTitle),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text.rich(TextSpan(
          text: 'My',
          children: [
            TextSpan(
                text: 'Flutter',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'App',
                style: TextStyle(fontSize: 30.0, color: Colors.blue)),
          ],
        )),
      ),
    );
  }
}