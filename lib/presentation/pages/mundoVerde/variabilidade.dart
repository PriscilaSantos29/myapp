import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:myapp/presentation/pages/mundoVerde/lamarc.dart';

class VariabilidadePage extends StatefulWidget {
  const VariabilidadePage({super.key});

  @override
  State<VariabilidadePage> createState() => _VariabilidadePageState();
}

class _VariabilidadePageState extends State<VariabilidadePage> {
  bool mostrarTextoMutacao = false;
  bool mostrarTextoTipos = false;
  bool mostrarTextoEfeitos = false;
  bool mostrarTextoVariabilidade = false;
  bool mostrarTextoOrigens = false;
  bool mostrarTextoImportancia = false;

  final String textoMutacao = '''
O que é:

Mutação é uma alteração no DNA, que é o material genético de todos os seres vivos.
O DNA é formado por uma sequência de "letras químicas" (A, T, C e G).
Quando essa sequência muda, mesmo que seja uma pequena troca de letras, dizemos que ocorreu uma mutação.

Como pode acontecer:

• Durante a duplicação do DNA: quando a célula vai se dividir, ela copia seu DNA; às vezes ocorrem erros.

• Por fatores do ambiente: radiação do Sol, raio-X, certos produtos químicos, fumo, alguns vírus.
''';

  final String textoTipos = '''
Principais tipos:

• Substituição: uma letra é trocada por outra.

• Inserção: uma ou mais letras são adicionadas.

• Deleção: uma ou mais letras são retiradas.

• Alterações maiores: pedaços de cromossomos podem se inverter, se duplicar ou trocar de lugar.
''';

  final String textoEfeitos = '''
Efeitos possíveis:

• Neutros: não mudam nada importante; a proteína continua funcionando.

• Benéficos: podem trazer vantagem, como resistência a uma doença.

• Prejudiciais: podem causar doenças genéticas ou aumentar o risco de câncer.

Nem toda mutação é "ruim"; muitas são parte natural do funcionamento da vida.
''';

  final String textoVariabilidade = '''
O que é:

Variabilidade genética é a diferença no DNA entre os indivíduos da mesma espécie.
É o motivo de as pessoas terem cores de olhos, tipos de cabelo e alturas diferentes, mesmo pertencendo à mesma população.
''';

  final String textoOrigens = '''
De onde vem essa diferença:

• Reprodução sexuada: na formação de óvulos e espermatozoides, os cromossomos se misturam de várias formas, criando combinações únicas.

• Mutação: novas mudanças no DNA que podem ser passadas para os filhos.

• Fluxo gênico: quando indivíduos de populações diferentes se cruzam, trazendo novos genes.

• Deriva genética: mudanças ao acaso na frequência dos genes, mais visíveis em grupos pequenos.
''';

  final String textoImportancia = '''
Por que são importantes:

• Diversidade: garantem que cada pessoa seja única.

• Adaptação: se o ambiente mudar (clima, alimentos, doenças), alguns indivíduos podem ter características que aumentam suas chances de sobreviver e reproduzir.

• Evolução: a seleção natural age sobre essas diferenças ao longo do tempo, permitindo que as espécies se transformem.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "MUTAÇÃO E VARIABILIDADE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Ilustração da mutação e variabilidade genética
            Container(
              height: 200,
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
              child: CustomPaint(
                painter: MutationVariabilityPainter(),
                size: const Size(double.infinity, 200),
              ),
            ),
            const SizedBox(height: 20),
            
            // Seção 1: MUTAÇÃO
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade300, width: 2),
              ),
              child: Text(
                "1. MUTAÇÃO",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Botão "O que é mutação?"
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
                onPressed: () => setState(() => mostrarTextoMutacao = !mostrarTextoMutacao),
                child: const Text(
                  "O que é mutação?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (mostrarTextoMutacao)
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
                  textoMutacao,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Tipos de mutação"
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
                onPressed: () => setState(() => mostrarTextoTipos = !mostrarTextoTipos),
                child: const Text(
                  "Tipos de mutação",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoTipos)
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
                  textoTipos,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Efeitos da mutação"
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
                onPressed: () => setState(() => mostrarTextoEfeitos = !mostrarTextoEfeitos),
                child: const Text(
                  "Efeitos da mutação",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoEfeitos)
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
                  textoEfeitos,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            const SizedBox(height: 20),

            // Seção 2: VARIABILIDADE GENÉTICA
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade300, width: 2),
              ),
              child: Text(
                "2. VARIABILIDADE GENÉTICA",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Botão "O que é variabilidade?"
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
                onPressed: () => setState(() => mostrarTextoVariabilidade = !mostrarTextoVariabilidade),
                child: const Text(
                  "O que é variabilidade genética?",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoVariabilidade)
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
                  textoVariabilidade,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Origens da variabilidade"
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
                onPressed: () => setState(() => mostrarTextoOrigens = !mostrarTextoOrigens),
                child: const Text(
                  "De onde vem a variabilidade?",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoOrigens)
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
                  textoOrigens,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            const SizedBox(height: 20),

            // Seção 3: IMPORTÂNCIA
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade300, width: 2),
              ),
              child: Text(
                "3. POR QUE SÃO IMPORTANTES",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
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
                  "Importância para a vida",
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
                    // Navegar para a página de Lamarck
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LamarckPage(),
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

class MutationVariabilityPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..style = PaintingStyle.fill;

    // Cores para diferentes bases
    final colors = {
      'A': Colors.red,
      'T': Colors.blue,
      'C': Colors.orange,
      'G': Colors.green,
    };

    // Desenhar três fitas de DNA mostrando diferentes tipos de mutação
    _drawDNAStrand(canvas, size, 0.15, ['A', 'T', 'C', 'G', 'A', 'T'], colors, "Normal", paint, fillPaint);
    _drawDNAStrand(canvas, size, 0.45, ['A', 'G', 'C', 'G', 'A', 'T'], colors, "Substituição", paint, fillPaint);
    _drawDNAStrand(canvas, size, 0.75, ['A', 'T', 'C', 'C', 'G', 'A', 'T'], colors, "Inserção", paint, fillPaint);

    // Desenhar setas indicando mutação
    _drawMutationArrows(canvas, size, paint);

    // Desenhar título
    _drawTitle(canvas, size, paint);
  }

  void _drawDNAStrand(Canvas canvas, Size size, double yPosition, List<String> bases, 
                     Map<String, Color> colors, String label, Paint paint, Paint fillPaint) {
    final y = size.height * yPosition;
    final spacing = size.width / (bases.length + 2);
    
    // Desenhar a linha de base do DNA
    paint.color = Colors.grey.shade400;
    paint.strokeWidth = 2;
    canvas.drawLine(
      Offset(spacing * 0.8, y),
      Offset(size.width - spacing * 0.8, y),
      paint,
    );

    // Desenhar as bases
    for (int i = 0; i < bases.length; i++) {
      final x = spacing * (i + 1.2);
      final base = bases[i];
      final color = colors[base]!;

      // Desenhar círculo da base
      fillPaint.color = color;
      canvas.drawCircle(Offset(x, y), 12, fillPaint);

      // Desenhar letra da base
      final textPainter = TextPainter(
        text: TextSpan(
          text: base,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(x - textPainter.width / 2, y - textPainter.height / 2),
      );

      // Destacar mutações com borda vermelha
      if (label == "Substituição" && i == 1) {
        paint.color = Colors.red;
        paint.strokeWidth = 3;
        canvas.drawCircle(Offset(x, y), 15, paint);
      } else if (label == "Inserção" && i == 3) {
        paint.color = Colors.red;
        paint.strokeWidth = 3;
        canvas.drawCircle(Offset(x, y), 15, paint);
      }
    }

    // Desenhar rótulo
    final labelPainter = TextPainter(
      text: TextSpan(
        text: label,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    labelPainter.layout();
    labelPainter.paint(
      canvas,
      Offset(10, y - labelPainter.height / 2),
    );
  }

  void _drawMutationArrows(Canvas canvas, Size size, Paint paint) {
    paint.color = Colors.red;
    paint.strokeWidth = 2;

    // Seta da primeira para segunda fita
    final startY1 = size.height * 0.25;
    final endY1 = size.height * 0.35;
    final midX = size.width * 0.85;

    canvas.drawLine(Offset(midX, startY1), Offset(midX, endY1), paint);
    // Ponta da seta
    canvas.drawLine(Offset(midX, endY1), Offset(midX - 5, endY1 - 5), paint);
    canvas.drawLine(Offset(midX, endY1), Offset(midX + 5, endY1 - 5), paint);

    // Seta da segunda para terceira fita
    final startY2 = size.height * 0.55;
    final endY2 = size.height * 0.65;

    canvas.drawLine(Offset(midX, startY2), Offset(midX, endY2), paint);
    // Ponta da seta
    canvas.drawLine(Offset(midX, endY2), Offset(midX - 5, endY2 - 5), paint);
    canvas.drawLine(Offset(midX, endY2), Offset(midX + 5, endY2 - 5), paint);
  }

  void _drawTitle(Canvas canvas, Size size, Paint paint) {
    final titlePainter = TextPainter(
      text: TextSpan(
        text: 'MUTAÇÃO E VARIABILIDADE',
        style: TextStyle(
          color: Colors.green.shade800,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    titlePainter.layout();
    titlePainter.paint(
      canvas,
      Offset(
        (size.width - titlePainter.width) / 2,
        10,
      ),
    );

    // Desenhar legenda das cores
    final legendY = size.height - 25;
    final legendSpacing = size.width / 5;
    final bases = ['A', 'T', 'C', 'G'];
    final baseColors = [Colors.red, Colors.blue, Colors.orange, Colors.green];

    for (int i = 0; i < bases.length; i++) {
      final x = legendSpacing * (i + 0.5);
      
      // Círculo colorido pequeno
      final fillPaint = Paint()..style = PaintingStyle.fill;
      fillPaint.color = baseColors[i];
      canvas.drawCircle(Offset(x, legendY), 6, fillPaint);

      // Letra da base
      final basePainter = TextPainter(
        text: TextSpan(
          text: bases[i],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      basePainter.layout();
      basePainter.paint(
        canvas,
        Offset(x - basePainter.width / 2, legendY - basePainter.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
