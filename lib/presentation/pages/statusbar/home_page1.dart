import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "MEU APP",
          style: TextStyle(color: Colors.white),
        ),
        //Alterando a cor da StatusBar de forma local
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.colorStatusBar,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: const Center(
        child: Text(
          'Olá Mundo Sejam Bem Vindos!',
          style: TextStyles.bodyLarge,
        ),
      ),
    );
  }
}
