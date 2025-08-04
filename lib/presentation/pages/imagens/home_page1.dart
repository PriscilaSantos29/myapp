//exemplo de uso de imagem pegando da internet
import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColorAppBar,
        title: Text("Meu App", style: TextStyles.appBarTitle),
      ),
      body: Center(
        child: Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          //width: 300,
          // height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
