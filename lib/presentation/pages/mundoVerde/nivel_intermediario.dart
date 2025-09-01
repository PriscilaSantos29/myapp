import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/tela_briofitas.dart';

class IntermediarioScreen extends StatelessWidget {
  const IntermediarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC6F5C6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Nível intermediário",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),

              // Card Taxonomia
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(12),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text(
                        "Classificação e Nomenclatura\n(Taxonomia)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      _buildButton(context, "Briófitas"),
                      _buildButton(context, "Pteridófitas"),
                      _buildButton(context, "Gimnospermas"),
                      _buildButton(context, "Angiospermas"),
                    ],
                  ),
                ),
              ),

              // Card Fisiologia
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(12),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text(
                        "Processos e Funções\n(Fisiologia)",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FisiologiaScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: const Size(220, 45),
                        ),
                        child: const Text("Acessar Conteúdo"),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA4E36F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(200, 45),
                ),
                child: const Text(
                  "Mudar de nível",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Botões da seção de taxonomia
  Widget _buildButton(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () {
          if (text == "Briófitas") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BriofitasPage(),
              ),
            );
          } else {
            // Aqui você pode adicionar lógica para os outros botões no futuro
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Tela '$text' ainda não implementada."),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minimumSize: const Size(220, 45),
        ),
        child: Text(text),
      ),
    );
  }
}

/// Tela de Fisiologia (já existente)
class FisiologiaScreen extends StatelessWidget {
  const FisiologiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> conteudos = [
      {
        "titulo": "Fotossíntese",
        "texto":
            "Transforma energia luminosa em energia química (glicose), liberando oxigênio."
      },
      {
        "titulo": "Respiração Celular",
        "texto":
            "Plantas utilizam glicose para gerar energia (ATP), consumindo oxigênio e liberando gás carbônico."
      },
      {
        "titulo": "Transpiração",
        "texto":
            "Perda de água pelas folhas, principalmente pelos estômatos. Essencial para regulação térmica."
      },
      {
        "titulo": "Seiva Bruta e Elaborada",
        "texto":
            "- Seiva Bruta: água e sais minerais transportados pelo xilema.\n- Seiva Elaborada: açúcares transportados pelo floema."
      },
      {
        "titulo": "Movimentos Vegetais",
        "texto":
            "Respostas das plantas a estímulos, como fototropismo (luz), geotropismo (gravidade) e nastias."
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fisiologia Vegetal"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: conteudos.length,
        itemBuilder: (context, index) {
          final item = conteudos[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 3,
            child: ExpansionTile(
              title: Text(
                item["titulo"]!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(item["texto"]!),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
