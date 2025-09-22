import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/darwin.dart';

class LamarckPage extends StatefulWidget {
  const LamarckPage({super.key});

  @override
  State<LamarckPage> createState() => _LamarckPageState();
}

class _LamarckPageState extends State<LamarckPage> {
  bool mostrarTextoIntroducao = false;
  bool mostrarTextoUsoDesuso = false;
  bool mostrarTextoHeranca = false;
  bool mostrarTextoImportancia = false;

  final String textoIntroducao = '''
Jean-Baptiste Lamarck foi um naturalista francês que, no início do século XIX, tentou explicar como os seres vivos mudam ao longo do tempo.

A ideia dele ficou conhecida como Lamarckismo ou Teoria do Uso e Desuso e da Herança dos Caracteres Adquiridos.

Esta foi uma das primeiras teorias científicas que tentou explicar a evolução das espécies, sendo um marco importante na história da biologia.
''';

  final String textoUsoDesuso = '''
O que é:

Lamarck acreditava que as partes do corpo usadas com frequência se desenvolvem mais, enquanto as que quase não são usadas ficam menores ou desaparecem.

Exemplo clássico:

O pescoço da girafa teria ficado mais longo porque os ancestrais usavam muito o pescoço para alcançar folhas no alto das árvores.

Outros exemplos que ele imaginava:

• Músculos de um ferreiro ficariam mais fortes pelo uso constante
• Olhos de animais que vivem no escuro se atrofiariam por desuso
• Asas de aves que voam muito se tornariam mais desenvolvidas
''';

  final String textoHeranca = '''
O que propunha:

Segundo Lamarck, essas mudanças ocorridas durante a vida do animal seriam passadas para os descendentes.

Ou seja, se uma girafa alongasse o pescoço durante sua vida, os filhotes já nasceriam com o pescoço um pouco mais comprido.

Como funcionaria:

• O animal desenvolve uma característica durante sua vida
• Essa característica é "gravada" no seu corpo
• Os filhos herdam essa modificação
• A cada geração, a característica se intensifica
''';

  final String textoImportancia = '''
Por que foi importante:

Hoje sabemos, com base na genética, que características adquiridas durante a vida não passam para os filhos (por exemplo, se alguém ganha músculos na academia, isso não é herdado).

Mas Lamarck foi importante porque:

• Foi um dos primeiros a propor que as espécies não são fixas
• Sugeriu que as espécies mudam ao longo do tempo
• Estabeleceu bases para o pensamento evolutivo
• Influenciou cientistas posteriores, incluindo Darwin

Legado científico:

Embora sua explicação estivesse incorreta, Lamarck abriu caminho para a biologia evolutiva moderna.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "TEORIA DE LAMARCK",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            
            // Ilustração da Teoria de Lamarck
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/img/lamark.jpg",
          height: 120,
          fit: BoxFit.cover,
        ),
      ),
                  const SizedBox(height: 8),
                  Text(
                    "USO E DESUSO",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Jean-Baptiste Lamarck (1744-1829)",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Botão "Introdução"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => setState(() => mostrarTextoIntroducao = !mostrarTextoIntroducao),
                child: const Text(
                  "Quem foi Lamarck?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (mostrarTextoIntroducao)
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  textoIntroducao,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Uso e Desuso"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => setState(() => mostrarTextoUsoDesuso = !mostrarTextoUsoDesuso),
                child: const Text(
                  "Lei do Uso e Desuso",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoUsoDesuso)
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  textoUsoDesuso,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Herança dos Caracteres Adquiridos"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => setState(() => mostrarTextoHeranca = !mostrarTextoHeranca),
                child: const Text(
                  "Herança dos Caracteres Adquiridos",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoHeranca)
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  textoHeranca,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Importância"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => setState(() => mostrarTextoImportancia = !mostrarTextoImportancia),
                child: const Text(
                  "Importância da Teoria",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoImportancia)
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  textoImportancia,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            const SizedBox(height: 20),

            // Botões de navegação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Voltar"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Navegar para Darwin
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DarwinPage(),
                      ),
                    );
                  },
                  child: const Text("Próximo ➝"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
