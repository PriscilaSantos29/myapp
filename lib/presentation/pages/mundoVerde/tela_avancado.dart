import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/heranca_genetica.dart';
import 'package:myapp/presentation/pages/mundoVerde/estrutura_dna.dart';
import 'package:myapp/presentation/pages/mundoVerde/variabilidade.dart';
import 'package:myapp/presentation/pages/mundoVerde/lamarc.dart';
import 'package:myapp/presentation/pages/mundoVerde/darwin.dart';

class TelaAvancado extends StatefulWidget {
  const TelaAvancado({super.key});

  @override
  State<TelaAvancado> createState() => _TelaAvancadoState();
}

class _TelaAvancadoState extends State<TelaAvancado> {
  bool showGeneticaTopics = false;
  bool showEvolucaoTopics = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF90EE90), // Verde claro
              Color(0xFF98FB98), // Verde muito claro
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Header com botão voltar e folhas decorativas
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black87,
                            size: 28,
                          ),
                        ),
                        Spacer(),
                        // Folhas decorativas no topo direito
                        _buildLeaf(25, Colors.green.shade600),
                        SizedBox(width: 10),
                        _buildLeaf(20, Colors.green.shade400),
                      ],
                    ),

                    // Folhas decorativas espalhadas
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 30,
                            child: _buildLeaf(18, Colors.green.shade300),
                          ),
                          Positioned(
                            top: 5,
                            left: 55,
                            child: _buildLeaf(15, Colors.green.shade400),
                          ),
                          Positioned(
                            top: 20,
                            left: 75,
                            child: _buildLeaf(12, Colors.green.shade500),
                          ),
                          Positioned(
                            top: 35,
                            left: 85,
                            child: _buildLeaf(10, Colors.green.shade300),
                          ),
                          Positioned(
                            top: 45,
                            left: 95,
                            child: _buildLeaf(8, Colors.green.shade400),
                          ),
                          Positioned(
                            top: 55,
                            left: 100,
                            child: _buildLeaf(6, Colors.green.shade500),
                          ),
                          Positioned(
                            top: 30,
                            right: 80,
                            child: _buildLeaf(16, Colors.green.shade500),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 120,
                            child: _buildLeaf(14, Colors.green.shade400),
                          ),
                        ],
                      ),
                    ),

                    // Título
                    Text(
                      'Nível avançado',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),

                    SizedBox(height: 40),

                    // Seção Genética
                    Column(
                      children: [
                        _buildMainTopicButton(
                          'GENÉTICA',
                          showGeneticaTopics,
                          () {
                            setState(() {
                              showGeneticaTopics = !showGeneticaTopics;
                              if (showGeneticaTopics) {
                                showEvolucaoTopics = false;
                              }
                            });
                          },
                        ),
                        
                        if (showGeneticaTopics) ...[
                          SizedBox(height: 15),
                          _buildSubTopicButton('HERANÇA GENÉTICA'),
                          SizedBox(height: 10),
                          _buildSubTopicButton('ESTRUTURA E FUNÇÃO DO DNA'),
                          SizedBox(height: 10),
                          _buildSubTopicButton('MUTAÇÃO E VARIABILIDADE'),
                        ],

                        SizedBox(height: 30),

                        _buildMainTopicButton(
                          'EVOLUÇÃO',
                          showEvolucaoTopics,
                          () {
                            setState(() {
                              showEvolucaoTopics = !showEvolucaoTopics;
                              if (showEvolucaoTopics) {
                                showGeneticaTopics = false;
                              }
                            });
                          },
                        ),

                        if (showEvolucaoTopics) ...[
                          SizedBox(height: 15),
                          _buildSubTopicButton('Transformismo (Lamarquismo)'),
                          SizedBox(height: 10),
                          _buildSubTopicButton('Seleção Natural (Darwinismo)'),
                        ],
                      ],
                    ),

                    SizedBox(height: 40),

                    // Folhas decorativas no meio
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 60,
                            child: _buildLeaf(20, Colors.green.shade300),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 40,
                            child: _buildLeaf(18, Colors.green.shade600),
                          ),
                          Positioned(
                            top: 30,
                            left: 150,
                            child: _buildLeaf(14, Colors.green.shade400),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 120,
                            child: _buildLeaf(16, Colors.green.shade500),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Botão "Mudar de nível"
                    Container(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFADFF2F), // Verde amarelado
                          foregroundColor: Colors.black87,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          'Mudar de nível',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    // Árvores na parte inferior
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildTree(70, Color(0xFF228B22), Color(0xFF8B4513)),
                          _buildTree(85, Color(0xFF32CD32), Color(0xFFA0522D)),
                          _buildTree(60, Color(0xFF006400), Color(0xFFD2691E)),
                          _buildTree(75, Color(0xFF228B22), Color(0xFF8B4513)),
                          _buildTree(70, Color(0xFF32CD32), Color(0xFFA0522D)),
                          _buildTree(65, Color(0xFF006400), Color(0xFFD2691E)),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainTopicButton(String title, bool isExpanded, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF228B22),
          elevation: 8,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Color(0xFF228B22),
              width: 3,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF228B22),
          ),
        ),
      ),
    );
  }

  Widget _buildSubTopicButton(String title) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {
          print('Botão clicado: $title'); // Debug print
          // Navegação específica para cada subtópico
          if (title == 'HERANÇA GENÉTICA') {
            print('Navegando para HerancaGeneticaPage'); // Debug print
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HerancaGeneticaPage(),
              ),
            );
          } else if (title == 'ESTRUTURA E FUNÇÃO DO DNA') {
            print('Navegando para EstruturaDnaPage'); // Debug print
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EstruturaDnaPage(),
              ),
            );
          } else if (title == 'MUTAÇÃO E VARIABILIDADE') {
            print('Navegando para VariabilidadePage'); // Debug print
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VariabilidadePage(),
              ),
            );
          } else if (title == 'Transformismo (Lamarquismo)') {
            print('Navegando para LamarckPage'); // Debug print
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LamarckPage(),
              ),
            );
          } else if (title == 'Seleção Natural (Darwinismo)') {
            print('Navegando para DarwinPage'); // Debug print
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DarwinPage(),
              ),
            );
          } else {
            // Ação para outros subtópicos
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$title selecionado!'),
                backgroundColor: Color(0xFF228B22),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF228B22),
          foregroundColor: Colors.white,
          elevation: 4,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildLeaf(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(size),
          bottomRight: Radius.circular(size),
        ),
      ),
    );
  }

  Widget _buildTree(double height, Color leavesColor, Color trunkColor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Copa da árvore
        Container(
          width: 30,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: leavesColor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        // Tronco da árvore
        Container(
          width: 8,
          height: height * 0.3,
          color: trunkColor,
        ),
      ],
    );
  }
}
