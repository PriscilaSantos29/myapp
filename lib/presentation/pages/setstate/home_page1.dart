//import 'package:flutter/material.dart';
//import 'package:myapp/core/theme/colors.dart';
//import 'package:myapp/core/theme/text_styles.dart';

/*class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _contador = 0;

  void incrementar(){
    setState((){
      _contador++;
    });
  }

  void decrementar(){
    setState((){
      _contador--;
    });
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _contador.toString(
              fontSize:25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onePressed: incrementar,
                style ElevatedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  elevation: 5
                ),
                child: Text(
                  "Incrementar",
                    style:TextStyle(
                      color: Colors.white,
                    )
                ),
              SizedBox(
                width: 20,
              ),
               ElevatedButton(
                onePressed: incrementar,
                style ElevatedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  elevation: 5
                ),
                child: Text(
                  "Decrementar",
                    style:TextStyle(
                      color: Colors.white,
                    )
                )
               ),
            ]
          )
        ]
      )
  );
}


}*/