import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroundColorScaffold,
      appBar:  AppBar(
       backgroundColor:  AppColors.backgroundColorAppBar,
        title: Text("Meu App",
        style: TextStyles.appBarTitle,
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
            width: 300,
            height: 300,
            child: Center(
              child: Text('Olá Mundo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                ),
              ),
            ),
            ),
        ],
      ),
    );
  }
}
