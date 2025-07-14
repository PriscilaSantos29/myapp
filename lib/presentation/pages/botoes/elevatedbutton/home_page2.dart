import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorScaffold,
      appBar: AppBar(
        backgroundColor:  AppColors.backgroundColorAppBar,
        title: Text("Meu App",
        style: TextStyles.appBarTitle,
        ),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ), 
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),

          label: Text(
            'Clique aqui',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold, 
              ),
          ),
          
          ),
      ),
    );
  }
}
