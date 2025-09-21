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
      appBar: AppBar(
        title: const Text("Nível Iniciante"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // volta para tela de níveis anteriores
          },
        ),
      ),
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

            ElevatedButton(
              style: _estiloBotao(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaEcologia(),
                  ),
                );
              },
              child: const Text(
                "INTERAÇÕES COM O MEIO AMBIENTE\n(ECOLOGIA)",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Novo botão Quiz
            ElevatedButton(
              style: _estiloBotao(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaQuiz(),
                  ),
                );
              },
              child: const Text(
                "QUIZ\n(TESTE SEUS CONHECIMENTOS)",
                textAlign: TextAlign.center,
              ),
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildCard("Raiz",
                    "A raiz fixa a planta ao solo, absorve água e sais minerais, além de armazenar substâncias nutritivas.",
                    "assets/img/raiz.jpg", Icons.grass),
                _buildCard("Caule",
                    "O caule sustenta as folhas, flores e frutos, além de transportar seiva por toda a planta.",
                    "assets/img/caule.jpg", Icons.eco),
                _buildCard("Folhas",
                    "As folhas realizam a fotossíntese, respiração e transpiração, sendo essenciais para a vida da planta.",
                    "assets/img/folhas.jpg", Icons.filter_vintage),
                _buildCard("Flores",
                    "As flores são os órgãos reprodutivos, responsáveis pela produção das sementes e frutos.",
                    "assets/img/flores.jpg", Icons.local_florist),
                _buildCard("Frutos",
                    "Os frutos se desenvolvem a partir da flor e protegem as sementes, auxiliando na dispersão.",
                    "assets/img/frutos.jpg", Icons.apple),
                _buildCard("Sementes",
                    "As sementes dão origem a novas plantas, garantindo a reprodução da espécie.",
                    "assets/img/sementes.png", Icons.spa),
              ],
            ),
          ),
          _rodape(context, const TelaFisiologia(), "Fisiologia"),
        ],
      ),
    );
  }

  static Widget _buildCard(
      String titulo, String descricao, String imagem, IconData icone) {
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
              child: Image.asset(imagem,
                  height: 150, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(descricao,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  static Widget _rodape(
      BuildContext context, Widget proximaTela, String labelBotao) {
    return Container(
      color: Colors.green[800],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.green[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            icon: const Icon(Icons.arrow_back),
            label: const Text("Voltar ao menu",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => proximaTela),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.green[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            icon: const Icon(Icons.arrow_forward),
            label: Text(labelBotao,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

// ---------------- Tela Fisiologia ----------------
class TelaFisiologia extends StatelessWidget {
  const TelaFisiologia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fisiologia Vegetal"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildCard(
                  titulo: "O que é Fisiologia Vegetal?",
                  descricao:
                      "Estudos dos processos internos que fazem as plantas viverem: nutrição, respiração, crescimento e adaptação ao ambiente.",
                  icone: Icons.eco_outlined,
                  imagem: "assets/img/fisiologia_intro.jpg",
                ),
                _buildCard(
                  titulo: "Fotossíntese & Nutrição",
                  descricao:
                      "Como as plantas usam luz, água e CO₂ para produzir alimento; macro e micronutrientes são essenciais para uma planta saudável.",
                  icone: Icons.wb_sunny,
                  imagem: "assets/img/fotossintese.png",
                ),
                _buildCard(
                  titulo: "Absorção e Transporte de Seiva",
                  descricao:
                      "Água e sais minerais entram pelas raízes; são transportados pelo xilema e floema para nutrir toda a planta.",
                  icone: Icons.water_drop,
                  imagem: "assets/img/seiva.png",
                ),
                _buildCard(
                  titulo: "Transpiração",
                  descricao:
                      "Plantas “suam” para regular temperatura e manter o transporte de água. Estômatos e cutícula permitem isso.",
                  icone: Icons.opacity,
                  imagem: "assets/img/transpiracao.jpg",
                ),
                _buildCard(
                  titulo: "Hormônios Vegetais",
                  descricao:
                      "Mensagens químicas internas como auxinas, giberelinas e citocininas regulam crescimento, frutos, flores e resposta a estresse.",
                  icone: Icons.message,
                  imagem: "assets/img/hormonios.png",
                ),
                _buildCard(
                  titulo: "Fotoperíodo e Fitocromos",
                  descricao:
                      "Como as plantas usam a luz para decidir quando florescer ou dormir; pigmentos que detectam luz e período do dia.",
                  icone: Icons.light_mode,
                  imagem: "assets/img/fotoperiodo.png",
                ),
                _buildCard(
                  titulo: "Respiração Vegetal",
                  descricao:
                      "Plantas também respiram! Mesmo à noite ou sem luz, liberando energia para suas funções vitais.",
                  icone: Icons.air,
                  imagem: "assets/img/respiracao.jpg",
                ),
                _buildCard(
                  titulo: "Estresse Abiótico",
                  descricao:
                      "Quando falta água, há muito calor ou frio, ou solo salino — como as plantas reagem para sobreviver.",
                  icone: Icons.terrain,
                  imagem: "assets/img/estresse.jpg",
                ),
                _buildCard(
                  titulo: "Movimentos Vegetais",
                  descricao:
                      "As plantas se movem também: se viram para a luz (fototropismo), crescem para baixo ou para cima (gravitropismo), etc.",
                  icone: Icons.nature,
                  imagem: "assets/img/movimentos.jpg",
                ),
              ],
            ),
          ),
          // Rodapé com navegação
          Container(
            color: Colors.green[800],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Voltar ao menu"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaEcologia(),
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
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Ecologia"),
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
    required IconData icone,
    required String imagem,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(icone, color: Colors.green, size: 30),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagem,
                height: 140,
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

// ---------------- Tela Ecologia ----------------
class TelaEcologia extends StatelessWidget {
  const TelaEcologia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecologia"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildCard(
                  titulo: "O que é Ecologia?",
                  descricao:
                      "A ciência que estuda as interações entre seres vivos e o ambiente onde vivem — sua “casa natural”.",
                  icone: Icons.home_work,
                  imagem: "assets/img/ecologia_intro.jpg",
                ),
                _buildCard(
                  titulo: "Níveis de Organização",
                  descricao:
                      "População, Comunidade, Ecossistema, Bioma e Biosfera — diferentes escalas de vida atuando juntas.",
                  icone: Icons.layers,
                  imagem: "assets/img/niveis.png",
                ),
                _buildCard(
                  titulo: "Habitat & Nicho Ecológico",
                  descricao:
                      "Onde um organismo vive (habitat) + como ele vive e interage no ambiente (nicho).",
                  icone: Icons.place,
                  imagem: "assets/img/habitat.jpg",
                ),
                _buildCard(
                  titulo: "Fatores Bióticos e Abióticos",
                  descricao:
                      "Seres vivos ou partes vivas + condições físicas como luz, água, solo, temperatura — tudo junto molda os ecossistemas.",
                  icone: Icons.terrain,
                  imagem: "assets/img/fatores.png",
                ),
                _buildCard(
                  titulo: "Relações Ecológicas",
                  descricao:
                      "Interações entre organismos — intra- e interespecíficas — como cooperação, competição, predação e mutualismo.",
                  icone: Icons.group,
                  imagem: "assets/img/relacoes.png",
                ),
                _buildCard(
                  titulo: "Cadeia Alimentar & Fluxo de Energia",
                  descricao:
                      "Quem come quem, níveis tróficos, energia que passa de um para outro e se perde no processo.",
                  icone: Icons.whatshot,
                  imagem: "assets/img/cadeias.png",
                ),
                _buildCard(
                  titulo: "Ciclos Biogeoquímicos",
                  descricao:
                      "Ciclagens da água, carbono, nitrogênio e oxigênio — manutenção da vida no planeta.",
                  icone: Icons.loop,
                  imagem: "assets/img/ciclos.png",
                ),
                _buildCard(
                  titulo: "Ramos da Ecologia",
                  descricao:
                      "Autoecologia, Sinecologia, Demoecologia e Ecologia Humana — diferentes jeitos de estudar ecologia.",
                  icone: Icons.science,
                  imagem: "assets/img/ramos.png",
                ),
                _buildCard(
                  titulo: "Exemplos Práticos & Atualidades",
                  descricao:
                      "Impacto humano, conservação, biomas locais, mudanças climáticas — o que afeta nossa casa natural.",
                  icone: Icons.public,
                  imagem: "assets/img/atualidades.jpg",
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green[800],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Voltar ao menu"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaQuiz()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.quiz),
                  label: const Text("Ir para Quiz"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- Método estático _buildCard ----------------
  static Widget _buildCard({
    required String titulo,
    required String descricao,
    required IconData icone,
    required String imagem,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(icone, color: Colors.green, size: 30),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagem,
                height: 140,
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

// ---------------- Tela Quiz ----------------
class TelaQuiz extends StatefulWidget {
  const TelaQuiz({super.key});

  @override
  _TelaQuizState createState() => _TelaQuizState();
}

class _TelaQuizState extends State<TelaQuiz> {
  int perguntaAtual = 0;
  int pontuacao = 0;

  final List<Map<String, dynamic>> perguntas = [
    {
      "pergunta": "Qual a função principal da raiz?",
      "opcoes": ["Fixar a planta", "Produzir flores", "Realizar fotossíntese", "Produzir frutos"],
      "resposta": "Fixar a planta"
    },
    {
      "pergunta": "O caule serve para:",
      "opcoes": ["Absorver água", "Sustentar folhas e transportar seiva", "Fotossíntese", "Reprodução"],
      "resposta": "Sustentar folhas e transportar seiva"
    },
    {
      "pergunta": "Qual órgão realiza a fotossíntese?",
      "opcoes": ["Folha", "Raiz", "Caule", "Flor"],
      "resposta": "Folha"
    },
    {
      "pergunta": "Qual a função das flores?",
      "opcoes": ["Reprodução", "Armazenar água", "Transportar seiva", "Produzir sementes apenas"],
      "resposta": "Reprodução"
    },
    {
      "pergunta": "Os frutos têm como função:",
      "opcoes": ["Fotossíntese", "Proteger sementes e auxiliar dispersão", "Absorver água", "Produzir hormônios"],
      "resposta": "Proteger sementes e auxiliar dispersão"
    },
    {
      "pergunta": "As sementes servem para:",
      "opcoes": ["Reprodução da espécie", "Fotossíntese", "Transpiração", "Absorção de nutrientes"],
      "resposta": "Reprodução da espécie"
    },
    {
      "pergunta": "Qual processo produz alimento usando luz, CO₂ e água?",
      "opcoes": ["Respiração", "Fotossíntese", "Transpiração", "Germinação"],
      "resposta": "Fotossíntese"
    },
    {
      "pergunta": "Como as plantas transportam água e sais minerais?",
      "opcoes": ["Xilema e floema", "Caule e folha", "Raiz e fruto", "Flor e semente"],
      "resposta": "Xilema e floema"
    },
    {
      "pergunta": "O que é transpiração?",
      "opcoes": ["Produção de flores", "Evaporação de água pelas folhas", "Fotossíntese", "Absorção de nutrientes"],
      "resposta": "Evaporação de água pelas folhas"
    },
    {
      "pergunta": "Qual hormônio vegetal regula crescimento e florescimento?",
      "opcoes": ["Auxina", "Insulina", "Adrenalina", "Glicose"],
      "resposta": "Auxina"
    },
    {
      "pergunta": "O que determina o fotoperíodo das plantas?",
      "opcoes": ["Luz do dia e pigmentos sensíveis", "Quantidade de água", "Temperatura do solo", "Concentração de CO₂"],
      "resposta": "Luz do dia e pigmentos sensíveis"
    },
    {
      "pergunta": "Respiração vegetal serve para:",
      "opcoes": ["Liberar energia para funções vitais", "Produzir flores", "Absorver água", "Transpiração apenas"],
      "resposta": "Liberar energia para funções vitais"
    },
    {
      "pergunta": "O que é estresse abiótico?",
      "opcoes": ["Falta de luz, água ou solo inadequado", "Ataque de predadores", "Excesso de nutrientes", "Produção de sementes"],
      "resposta": "Falta de luz, água ou solo inadequado"
    },
    {
      "pergunta": "Fototropismo é:",
      "opcoes": ["Movimento da planta em direção à luz", "Movimento da água no caule", "Produção de sementes", "Transpiração"],
      "resposta": "Movimento da planta em direção à luz"
    },
    {
      "pergunta": "Ecologia estuda:",
      "opcoes": ["Interações entre seres vivos e ambiente", "Somente plantas", "Cadeias de alimentos artificiais", "Reprodução de animais"],
      "resposta": "Interações entre seres vivos e ambiente"
    },
    {
      "pergunta": "Qual é o menor nível de organização ecológica?",
      "opcoes": ["População", "Bioma", "Comunidade", "Biosfera"],
      "resposta": "População"
    },
    {
      "pergunta": "O que é nicho ecológico?",
      "opcoes": ["Como um organismo vive no ambiente", "Onde um organismo vive", "Todos os seres vivos de um ecossistema", "Energia da luz solar"],
      "resposta": "Como um organismo vive no ambiente"
    },
    {
      "pergunta": "Relações intraespecíficas ocorrem entre:",
      "opcoes": ["Mesmos indivíduos de uma espécie", "Espécies diferentes", "Plantas apenas", "Predadores apenas"],
      "resposta": "Mesmos indivíduos de uma espécie"
    },
    {
      "pergunta": "Cadeia alimentar mostra:",
      "opcoes": ["Quem come quem e fluxo de energia", "Somente produtores", "Somente consumidores", "Apenas decompositores"],
      "resposta": "Quem come quem e fluxo de energia"
    },
    {
      "pergunta": "Ciclos biogeoquímicos incluem:",
      "opcoes": ["Água, carbono, nitrogênio e oxigênio", "Somente água", "Somente carbono", "Somente oxigênio"],
      "resposta": "Água, carbono, nitrogênio e oxigênio"
    },
  ];

  final List<String> letras = ["A", "B", "C", "D"];

  void responder(String respostaSelecionada) {
    if (respostaSelecionada == perguntas[perguntaAtual]["resposta"]) {
      pontuacao++;
    }
    setState(() {
      if (perguntaAtual < perguntas.length - 1) {
        perguntaAtual++;
      } else {
        _mostrarResultado();
      }
    });
  }

  void _mostrarResultado() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Quiz Finalizado"),
        content: Text("Sua pontuação final: $pontuacao / ${perguntas.length}"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context); // volta ao menu
            },
            child: const Text("Fechar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pergunta = perguntas[perguntaAtual];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz - Nível Iniciante"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Pergunta ${perguntaAtual + 1} / ${perguntas.length}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Text(
              pergunta["pergunta"],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...List.generate(pergunta["opcoes"].length, (index) {
              final opcao = pergunta["opcoes"][index];
              final letra = letras[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () => responder(opcao),
                  child: Text(
                    "$letra) $opcao",
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              );
            }),
            const SizedBox(height: 20),
            Text(
              "Pontuação atual: $pontuacao",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

