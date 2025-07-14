import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      child: Text(
        "Olá Mundo!",
        style: TextStyles.bodyLarge,
      ),
    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: (){},
      backgroundColor:AppColors.backgroundFloatingActionButton,
      label: Text(
        'Adicionar',
        style: TextStyle(
          color: Colors.white,
        )),
       icon: Icon(
        Icons.add,
        color: Colors.white,
        ),
      ),
    );
  }
}