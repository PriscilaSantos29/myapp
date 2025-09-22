import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/estrutura_dna.dart';

class HerancaGeneticaPage extends StatefulWidget {
  const HerancaGeneticaPage({super.key});

  @override
  State<HerancaGeneticaPage> createState() => _HerancaGeneticaPageState();
}

class _HerancaGeneticaPageState extends State<HerancaGeneticaPage> {
  bool mostrarTextoOqueSao = false;
  bool mostrarTextoCaracteristicas = false;
  bool mostrarTextoExemplos = false;
  bool mostrarTextoGenes = false;

  final String textoOqueSao = '''
Herança genética é o processo de passar essas características dos pais para os filhos.
Quando um bebê se forma, ele recebe:

• Metade do DNA da mãe (óvulo)
• Metade do DNA do pai (espermatozoide)

Essas duas metades se juntam e formam um novo livro de características: o DNA do bebê.
''';

  final String textoCaracteristicas = '''
Como as características aparecem:

Genes dominantes: são como características que "falam mais alto".
Ex.: se o gene para olhos castanhos for dominante e o para olhos azuis for recessivo, basta um gene castanho para o bebê ter olhos castanhos.

Genes recessivos: são características que só aparecem se vierem em dose dupla, uma do pai e outra da mãe.
''';

  final String textoExemplos = '''
Exemplos práticos:

• Tipo sanguíneo: vem da combinação dos genes A, B e O.

• Cor dos olhos ou cabelo: depende da mistura de vários genes diferentes.

• Doenças hereditárias: como anemia falciforme, podem aparecer se os dois pais passarem o gene.
''';

  final String textoGenes = '''
Os genes são pequenas instruções no nosso DNA que determinam nossas características. 

Cada pessoa tem duas cópias de cada gene: uma que veio da mãe e outra que veio do pai.

A combinação dessas duas cópias é que define como cada característica vai aparecer na pessoa.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "HERANÇA GENÉTICA",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Ícone representativo da genética
            Container(
              height: 150,
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
              child: const Icon(
                Icons.family_restroom,
                size: 100,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            
            // Botão "O que é herança genética?"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => setState(() => mostrarTextoOqueSao = !mostrarTextoOqueSao),
                child: const Text(
                  "O que é herança genética?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (mostrarTextoOqueSao)
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
                  textoOqueSao,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            const SizedBox(height: 10),

            // Botão "Como as características aparecem"
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
                onPressed: () => setState(() => mostrarTextoCaracteristicas = !mostrarTextoCaracteristicas),
                child: const Text(
                  "Como as características aparecem",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoCaracteristicas)
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
                  textoCaracteristicas,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "O que são genes?"
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
                onPressed: () => setState(() => mostrarTextoGenes = !mostrarTextoGenes),
                child: const Text(
                  "O que são genes?",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoGenes)
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
                  textoGenes,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Exemplos práticos"
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
                onPressed: () => setState(() => mostrarTextoExemplos = !mostrarTextoExemplos),
                child: const Text(
                  "Exemplos práticos",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoExemplos)
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
                  textoExemplos,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EstruturaDnaPage(),
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
