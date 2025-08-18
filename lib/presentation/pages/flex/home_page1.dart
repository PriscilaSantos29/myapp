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
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
            ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
            ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
            ),
        ],
        ),
    );
  }
}
