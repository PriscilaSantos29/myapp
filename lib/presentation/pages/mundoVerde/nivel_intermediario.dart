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

              // Card Taxonomia com botões individuais
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
                      _buildTaxonomyButton(
                          context, "Briófitas", const BriofitasPage()),
                      _buildTaxonomyButton(
                          context, "Pteridófitas", const PteridofitasPage()),
                      _buildTaxonomyButton(
                          context, "Gimnospermas", const GimnospermasPage()),
                      _buildTaxonomyButton(
                          context, "Angiospermas", const AngiospermasPage()),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // Botão Voltar
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(200, 45),
                ),
                child: const Text(
                  "Voltar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaxonomyButton(
      BuildContext context, String text, Widget destination) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
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

class PteridofitasPage extends StatelessWidget {
  const PteridofitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> conteudos = [
      {
        "titulo": "Características Gerais",
        "texto":
            "São plantas vasculares (possuem xilema e floema), porém não produzem sementes. Apresentam raiz, caule e folhas bem definidos."
      },
      {
        "titulo": "Exemplos",
        "texto": "Samambaias, avencas e cavalinhas."
      },
      {
        "titulo": "Reprodução",
        "texto":
            "Dependem de água para a fecundação, pois o gameta masculino nada até o feminino. Apresentam alternância de gerações (gametófito e esporófito)."
      },
      {
        "titulo": "Importância Ecológica",
        "texto":
            "Ajudam na formação do solo e servem de abrigo para pequenos animais. Contribuem para a manutenção da umidade nos ecossistemas."
      },
    ];

    return _buildScaffold("Pteridófitas", conteudos);
  }
}

/// ------------------
/// GIMNOSPERMAS
/// ------------------
class GimnospermasPage extends StatelessWidget {
  const GimnospermasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> conteudos = [
      {
        "titulo": "Características Gerais",
        "texto":
            "São plantas vasculares com sementes, mas sem frutos (sementes nuas). Possuem raiz, caule, folhas e vasos condutores."
      },
      {
        "titulo": "Exemplos",
        "texto": "Pinheiros, araucárias, ciprestes e sequoias."
      },
      {
        "titulo": "Reprodução",
        "texto":
            "Fazem reprodução sexuada por sementes expostas em estruturas chamadas estróbilos ou cones."
      },
      {
        "titulo": "Importância Ecológica e Econômica",
        "texto":
            "Produzem madeira, resina e papel. Além disso, são fundamentais em biomas frios e temperados."
      },
    ];

    return _buildScaffold("Gimnospermas", conteudos);
  }
}

/// ------------------
/// ANGIOSPERMAS
/// ------------------
class AngiospermasPage extends StatelessWidget {
  const AngiospermasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> conteudos = [
      {
        "titulo": "Características Gerais",
        "texto":
            "São plantas vasculares que produzem flores e frutos com sementes. É o grupo mais diverso do reino Plantae."
      },
      {
        "titulo": "Exemplos",
        "texto": "Mangueira, roseira, milho, feijão, orquídea, grama, etc."
      },
      {
        "titulo": "Reprodução",
        "texto":
            "A reprodução ocorre por flores, onde acontece a polinização e fecundação. As sementes ficam protegidas dentro dos frutos."
      },
      {
        "titulo": "Importância Ecológica e Econômica",
        "texto":
            "Fornecem a maior parte dos alimentos, madeiras, fibras têxteis, medicamentos, óleos e ornamentação."
      },
    ];

    return _buildScaffold("Angiospermas", conteudos);
  }
}

/// ------------------
/// WIDGET BASE (estilo igual ao FisiologiaScreen)
/// ------------------
Widget _buildScaffold(String titulo, List<Map<String, String>> conteudos) {
  return Scaffold(
    appBar: AppBar(
      title: Text(titulo),
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

