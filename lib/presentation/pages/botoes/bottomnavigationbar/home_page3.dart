import 'package:flutter/material.dart';
import 'package:myapp/core/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("MEU APP", style: TextStyles.appBarTitle),
      ),
      body: const Center(
        child: Text(
          'Início',
          style: TextStyle(fontSize: 60),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //Define o tamanho dos ícones dos itens da barra de navegação
        iconSize: 30,
        //Define o tamanho da fonte dos rótulos dos itens selecionados
        selectedFontSize: 15,
        //Define o estilo do texto (rótulo) para os itens selecionados.
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        //Define o índice do item atualmente selecionado na barra de navegação. Presumivelmente, currentIndex é uma variável que armazena o índice do item selecionado.
        currentIndex: currentIndex,
        //Especifica a função a ser executada quando um item na barra de navegação é tocado. A função onTap recebe o índice do item tocado como argumento. A função setState é usada para atualizar a interface do usuário e, neste caso, atualiza a variável currentIndex com o novo índice.
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorito",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}