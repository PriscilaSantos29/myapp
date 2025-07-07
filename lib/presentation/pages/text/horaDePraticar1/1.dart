import 'dart:ffi';

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
        child: Container(
          child: Text("Olá Mundo",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white
              ),
            ),
          width: 350,
          height: 350,
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,


            

            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 30,
                offset: Offset(-10, -10)
              ),
              BoxShadow(
                color: Colors.red,
                blurRadius: 30,
                offset: Offset(-10, -10)
              )
            ]
                   
          )
        ),
      ),
    );
  }
}
// • Container width: 310 e height: 310.
// • Pesquisem por “decoration: BoxDecoration”.