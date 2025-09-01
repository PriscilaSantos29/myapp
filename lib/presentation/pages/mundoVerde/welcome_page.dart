import 'package:flutter/material.dart';
import 'level_selection_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                minHeight:
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Folhas decorativas no topo
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          // Folhas espalhadas
                          Positioned(
                            top: 20,
                            left: 30,
                            child: _buildLeaf(30, Colors.green),
                          ),
                          Positioned(
                            top: 60,
                            right: 40,
                            child: _buildLeaf(25, Colors.green.shade600),
                          ),
                          Positioned(
                            top: 100,
                            left: 80,
                            child: _buildLeaf(20, Colors.green.shade400),
                          ),
                          Positioned(
                            top: 40,
                            right: 100,
                            child: _buildLeaf(35, Colors.green.shade700),
                          ),
                          Positioned(
                            top: 140,
                            right: 60,
                            child: _buildLeaf(28, Colors.green.shade500),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Título principal
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bem-vindo ao\nMundo Verde!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Descubra o universo das\nplantas de forma\ndivertida',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),

                    // Folhas decorativas no meio (reduzido)
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 50,
                            child: _buildLeaf(22, Colors.green.shade300),
                          ),
                          Positioned(
                            top: 30,
                            right: 70,
                            child: _buildLeaf(18, Colors.green.shade600),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 100,
                            child: _buildLeaf(20, Colors.green.shade400),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 50,
                            child: _buildLeaf(18, Colors.green.shade500),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30),

                    // Botão Começar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LevelSelectionPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF228B22), // Verde escuro
                            foregroundColor: Colors.white,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Começar',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                          _buildTree(80, Color(0xFF228B22), Color(0xFF8B4513)),
                          _buildTree(75, Color(0xFF32CD32), Color(0xFFA0522D)),
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
          width: 35,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: leavesColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        // Tronco da árvore
        Container(width: 8, height: height * 0.3, color: trunkColor),
      ],
    );
  }
}
