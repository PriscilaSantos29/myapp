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
        children: [
          Container(
            margin: EdgeInsets.all(40),
            color: Colors.red,
            width: 90,
            height: 90,
          ),
          Container(
            margin: EdgeInsets.all(80),
            color: Colors.yellow,
            width: 80,
            height: 80,),
          Container(
            margin: EdgeInsets.all(120),
            color: Colors.green,
            width: 70,
            height: 70,),
        ],
      ),
    );
  }
}
