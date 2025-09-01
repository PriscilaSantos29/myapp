import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nível Iniciante',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TelaIniciante(),
    );
  }
}

// ---------------- Tela Inicial ----------------
class TelaIniciante extends StatelessWidget {
  const TelaIniciante({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8E6CF), Color(0xFFDCEDC1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Nível iniciante",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),

            // Botão Morfologia
            ElevatedButton(
              style: _estiloBotao(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaMorfologia(),
                  ),
                );
              },
              child: const Text(
                "ESTRUTURA DAS PLANTAS\n(MORFOLOGIA)",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Botão Fisiologia
            ElevatedButton(
              style: _estiloBotao(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaFisiologia(),
                  ),
                );
              },
              child: const Text(
                "PROCESSOS E FUNÇÕES\n(FISIOLOGIA)",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Botão Ecologia
            ElevatedButton(
              style: _estiloBotao(),
              onPressed: () {
                // tela de Ecologia futuramente
              },
              child: const Text(
                "INTERAÇÕES COM O MEIO AMBIENTE\n(ECOLOGIA)",
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // lógica futura para mudar de nível
              },
              child: const Text("Mudar de nível"),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle _estiloBotao() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.green, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    );
  }
}

// ---------------- Tela Morfologia ----------------
class TelaMorfologia extends StatelessWidget {
  const TelaMorfologia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Morfologia - Partes da Planta"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Conteúdo que rola
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildCard(
                  titulo: "Raiz",
                  descricao:
                      "A raiz fixa a planta ao solo, absorve água e sais minerais, além de armazenar substâncias nutritivas.",
                  imagem: "assets/img/raiz.jpg",
                  icone: Icons.grass,
                ),
                _buildCard(
                  titulo: "Caule",
                  descricao:
                      "O caule sustenta as folhas, flores e frutos, além de transportar seiva por toda a planta.",
                  imagem: "assets/img/caule.jpg",
                  icone: Icons.eco,
                ),
                _buildCard(
                  titulo: "Folhas",
                  descricao:
                      "As folhas realizam a fotossíntese, respiração e transpiração, sendo essenciais para a vida da planta.",
                  imagem: "assets/img/folhas.jpg",
                  icone: Icons.filter_vintage,
                ),
                _buildCard(
                  titulo: "Flores",
                  descricao:
                      "As flores são os órgãos reprodutivos, responsáveis pela produção das sementes e frutos.",
                  imagem: "assets/img/flores.jpg",
                  icone: Icons.local_florist,
                ),
                _buildCard(
                  titulo: "Frutos",
                  descricao:
                      "Os frutos se desenvolvem a partir da flor e protegem as sementes, auxiliando na dispersão.",
                  imagem: "assets/img/frutos.jpg",
                  icone: Icons.apple,
                ),
                _buildCard(
                  titulo: "Sementes",
                  descricao:
                      "As sementes dão origem a novas plantas, garantindo a reprodução da espécie.",
                  imagem: "assets/img/sementes.png",
                  icone: Icons.spa,
                ),
              ],
            ),
          ),

          // Rodapé com botões
          Container(
            color: Colors.green[800],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botão voltar ao menu
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context); // volta ao menu inicial
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text(
                    "Voltar ao menu",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // Botão Fisiologia
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                const TelaFisiologia(), //exemplo da tela fisiologia, que vai ter no futuro
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  label: const Text(
                    "Fisiologia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String titulo,
    required String descricao,
    required String imagem,
    required IconData icone,
  }) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icone, color: Colors.green, size: 30),
                const SizedBox(width: 10),
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imagem,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              descricao,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- Tela Fisiologia (exemplo) ----------------
class TelaFisiologia extends StatelessWidget {
  const TelaFisiologia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fisiologia"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Conteúdos de Fisiologia...",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
