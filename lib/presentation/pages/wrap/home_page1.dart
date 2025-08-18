import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColorAppBar,
        title: Text("Meu App", style: TextStyles.appBarTitle),
      ),
      body: Wrap(
        direction: Axis.horizontal,
        spacing: 5,
        runSpacing: 5,
        alignment: WrapAlignment.spaceAround,
        children: [
          Container(
            width: 100, 
            height: 100, 
            color: Colors.amber,
            ),
          Container(
            width: 100, 
            height: 100, 
            color: Colors.red,
            ),
          Container(
            width: 100, 
            height: 100, 
            color: Colors.green,
            ),
            Container(
            width: 100, 
            height: 100, 
            color: Colors.pink,
            ),
          Container(
            width: 100, 
            height: 100, 
            color: Colors.indigo,
            ),
          Container(
            width: 100, 
            height: 100, 
            color: Colors.purple,
            ),
        ],
      ),
    );
  }
}
