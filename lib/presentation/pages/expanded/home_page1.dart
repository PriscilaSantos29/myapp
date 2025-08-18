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
      body: Center(
        child: Column(
          children: [
            Container(
            height: 150, 
            color: Colors.amber,
            child: Center(
              child: Text('150'),
              ) ,
            ),
            Expanded(
              child: Container(
              color: Colors.red,
              child: Center(
                child: Text('Espaço disponível'),
                ) ,
              ),
            ),
        
            Container(
            height: 100, 
            color: Colors.green,
            child: Center(
              child: Text('100'),
              ) ,
            ),
          ],
        ),

      ),
    );
  }
}
