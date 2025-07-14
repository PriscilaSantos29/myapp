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
        child: TextButton.icon(
          onPressed: (){}, 
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            elevation: 10,
          ),
          icon: Icon(
           Icons.add,
           color: Colors.white, 
          ),
          label: Text(
            'Clique Aqui',
            style: TextStyle(
              color: Colors.white,
            )
          ),
          ),
      ),
    );
  }
}
