import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:myapp/presentation/pages/mundoVerde/variabilidade.dart';

class EstruturaDnaPage extends StatefulWidget {
  const EstruturaDnaPage({super.key});

  @override
  State<EstruturaDnaPage> createState() => _EstruturaDnaPageState();
}

class _EstruturaDnaPageState extends State<EstruturaDnaPage> {
  bool mostrarTextoEstrutura = false;
  bool mostrarTextoFuncao = false;
  bool mostrarTextoLetras = false;
  bool mostrarTextoProteinas = false;

  final String textoEstrutura = '''
Estrutura do DNA – como é feito:

Imagine uma escada em caracol, uma escada em espiral.
O DNA tem exatamente esse formato e é chamado de dupla hélice.

• Corrimãos da escada: são feitos de açúcar e fosfato.

• Degraus da escada: são pares de "letras químicas" chamadas bases nitrogenadas.
''';

  final String textoLetras = '''
As 4 letras do DNA:

• A (adenina)
• T (timina)
• C (citosina)
• G (guanina)

Essas letras sempre se juntam de forma específica:
• A sempre com T
• C sempre com G

Pense que é como um quebra-cabeça: só essas duplas encaixam.
''';

  final String textoFuncao = '''
Função do DNA – para que serve:

O DNA é o manual de instruções da vida.
Ele guarda todas as receitas para construir e manter o seu corpo.

• Guardar a informação genética: Ele é o pendrive com todos os arquivos que dizem como você é: altura, cor dos olhos, funcionamento das células etc.

• Copiar e passar adiante: Quando uma célula se divide ou quando um bebê é formado, o DNA se duplica, garantindo que cada nova célula ou novo ser tenha o mesmo manual.
''';

  final String textoProteinas = '''
Produzir proteínas:

Os genes (trechos do DNA) são receitas de proteínas.

As proteínas fazem quase tudo:
• Formam músculos
• Formam cabelos
• Produzem hormônios
• Criam anticorpos

Sem as proteínas, nosso corpo não funcionaria!
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "ESTRUTURA E FUNÇÃO DO DNA",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Ilustração do DNA
            Container(
              height: 250,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CustomPaint(
                  painter: DNAPainter(),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildBaseLabel('A', 'Adenina', Colors.red),
                            _buildBaseLabel('T', 'Timina', Colors.blue),
                            _buildBaseLabel('C', 'Citosina', Colors.orange),
                            _buildBaseLabel('G', 'Guanina', Colors.green),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // Botão "Estrutura do DNA"
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
                onPressed: () => setState(() => mostrarTextoEstrutura = !mostrarTextoEstrutura),
                child: const Text(
                  "Estrutura do DNA - Como é feito",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (mostrarTextoEstrutura)
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
                  textoEstrutura,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            const SizedBox(height: 10),

            // Botão "As 4 letras do DNA"
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
                onPressed: () => setState(() => mostrarTextoLetras = !mostrarTextoLetras),
                child: const Text(
                  "As 4 letras do DNA",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoLetras)
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
                  textoLetras,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Função do DNA"
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
                onPressed: () => setState(() => mostrarTextoFuncao = !mostrarTextoFuncao),
                child: const Text(
                  "Função do DNA - Para que serve",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoFuncao)
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
                  textoFuncao,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Produzir proteínas"
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
                onPressed: () => setState(() => mostrarTextoProteinas = !mostrarTextoProteinas),
                child: const Text(
                  "Produzir proteínas",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoProteinas)
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
                  textoProteinas,
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
                        builder: (context) => const VariabilidadePage(),
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

  Widget _buildBaseLabel(String letter, String name, Color color) {
    return Column(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              letter,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class DNAPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final centerX = size.width / 2;
    final amplitude = size.width * 0.15; // Amplitude da hélice
    final frequency = 4; // Número de voltas completas

    // Desenhar as duas fitas da dupla hélice
    final path1 = Path();
    final path2 = Path();

    for (int i = 0; i <= 100; i++) {
      final t = i / 100.0;
      final y = t * (size.height - 40);
      final angle = t * frequency * 2 * 3.14159;
      
      final x1 = centerX + amplitude * math.cos(angle);
      final x2 = centerX + amplitude * math.cos(angle + 3.14159); // 180° defasado

      if (i == 0) {
        path1.moveTo(x1, y + 20);
        path2.moveTo(x2, y + 20);
      } else {
        path1.lineTo(x1, y + 20);
        path2.lineTo(x2, y + 20);
      }
    }

    // Desenhar primeira fita (azul)
    paint.color = Colors.blue.shade600;
    canvas.drawPath(path1, paint);

    // Desenhar segunda fita (azul escuro)
    paint.color = Colors.blue.shade800;
    canvas.drawPath(path2, paint);

    // Desenhar as ligações entre as bases (rungs da escada)
    paint.strokeWidth = 2;
    final colors = [Colors.red, Colors.blue, Colors.orange, Colors.green];
    
    for (int i = 0; i <= 20; i++) {
      final t = i / 20.0;
      final y = t * (size.height - 60) + 30;
      final angle = t * frequency * 2 * 3.14159;
      
      final x1 = centerX + amplitude * math.cos(angle);
      final x2 = centerX + amplitude * math.cos(angle + 3.14159);

      // Alternar cores das bases
      paint.color = colors[i % 4];
      canvas.drawLine(Offset(x1, y), Offset(x2, y), paint);

      // Desenhar pequenos círculos nas extremidades (bases)
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(Offset(x1, y), 4, paint);
      canvas.drawCircle(Offset(x2, y), 4, paint);
      paint.style = PaintingStyle.stroke;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
