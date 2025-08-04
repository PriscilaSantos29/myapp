import 'package:flutter/material.dart';
import 'package:myapp/core/theme/colors.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor:  AppColors.backgroundColorAppBar,
        title: Text("Meu App",
        style: TextStyles.appBarTitle,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
    ),
    drawer: Drawer(
      child: ListView(
      padding:  EdgeInsets.zero,
      children: [ 
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage( 
            image: AssetImage('assets/img/fundo.jpg'),
            fit: BoxFit.fill,
            ),
          ),
          accountName: Text(
            'Coruja da Floresta',
            style: TextStyle(color: Colors.white),
          ),
          accountEmail: Text(
            'coruja@gmail.com',
            style: TextStyle(color: Colors.white),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configurações'),
          onTap: () {
            Navigator.pop(context);
          },
        )
       ],
    )
    ),
    
    body: Center(
      child: Image.asset(
        'assets/img/leao.jpg',

        fit: BoxFit.cover,
        
      ),

    ),
    
    );
  }
}