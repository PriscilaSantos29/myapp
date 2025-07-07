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
            color: Colors.red,
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.yellow,
            width: 290,
            height: 290,),
          Container(
            color: Colors.green,
            width: 280,
            height: 280,),
        ],
      ),
    );
  }
}
