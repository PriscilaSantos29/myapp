import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/nivel_intermediario.dart';
import 'package:myapp/presentation/pages/mundoVerde/tela_iniciante.dart';
import 'package:myapp/presentation/pages/mundoVerde/tela_avancado.dart';

class LevelSelectionPage extends StatelessWidget {
  const LevelSelectionPage({super.key});

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
                    // Botão voltar e folhas decorativas
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

                    // Folhas decorativas espalhadas (reduzido)
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 40,
                            child: _buildLeaf(20, Colors.green.shade300),
                          ),
                          Positioned(
                            top: 20,
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

                    SizedBox(height: 10),

                    // Título
                    Text(
                      'Escolha sua\ntrilha!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),

                    SizedBox(height: 30),

                    // Botões de nível
                    Column(
                      children: [
                        _buildLevelButton(
                          context,
                          'Iniciante',
                          '(6º ano)',
                          Color(0xFF90EE90), // Verde claro
                          Icons.eco,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TelaIniciante(),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 15),

                        _buildLevelButton(
                          context,
                          'Intermediário',
                          '(7º/8º ano)',
                          Color(0xFF32CD32), // Verde médio
                          Icons.local_florist,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const IntermediarioScreen(),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 15),

                        _buildLevelButton(
                          context,
                          'Avançado',
                          '(9º ano)',
                          Color(0xFF228B22), // Verde escuro
                          Icons.park,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TelaAvancado(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Folhas decorativas no meio
                    SizedBox(
                      height: 40,
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
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    // Árvores na parte inferior (reduzido)
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildTree(60, Color(0xFF228B22), Color(0xFF8B4513)),
                          _buildTree(70, Color(0xFF32CD32), Color(0xFFA0522D)),
                          _buildTree(50, Color(0xFF006400), Color(0xFFD2691E)),
                          _buildTree(65, Color(0xFF228B22), Color(0xFF8B4513)),
                          _buildTree(60, Color(0xFF32CD32), Color(0xFFA0522D)),
                          _buildTree(55, Color(0xFF006400), Color(0xFFD2691E)),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLevelButton(
    BuildContext context,
    String title,
    String subtitle,
    Color backgroundColor,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Icon(icon, size: 28, color: Colors.white),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  if (subtitle.isNotEmpty)
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                ],
              ),
            ),
          ],
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
          width: 25,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: leavesColor,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        // Tronco da árvore
        Container(width: 5, height: height * 0.3, color: trunkColor),
      ],
    );
  }
}
