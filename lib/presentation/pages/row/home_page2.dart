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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                width: 80, 
                height: 80, 
                color: Colors.amber,
                ),
                Container(
                width: 80, 
                height: 80, 
                color: Colors.red,
                ),
                Container(
                width: 80, 
                height: 80, 
                color: Colors.green,
                ),
              ],
            ),
          
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                width: 80, 
                height: 80, 
                color: Colors.pink,
                ),
                Container(
                width: 80, 
                height: 80, 
                color: Colors.deepPurple,
                ),
                Container(
                width: 80, 
                height: 80, 
                color: Colors.greenAccent,
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
