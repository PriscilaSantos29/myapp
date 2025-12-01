import 'package:flutter/material.dart';
import 'dart:math';

class TelaForca extends StatefulWidget {
  const TelaForca({super.key});

  @override
  State<TelaForca> createState() => _TelaForcaState();
}

class _TelaForcaState extends State<TelaForca> {
  final List<String> _palavras = [
    "FLUTTER",
    "DART",
    "WIDGET",
    "CODIGO",
    "MOBILE",
    "NAVEGAR",
    "TELA",
  ];

  late String _palavra;
  late List<String> _palavraOculta;
  List<String> _letrasUsadas = [];
  int _erros = 0;
  final int _maxErros = 6;
  bool _gameOver = false;

  final List<String> _alfabeto = List.generate(26, (i) => String.fromCharCode(65 + i));

  @override
  void initState() {
    super.initState();
    _novaPartida();
  }

  void _novaPartida() {
    setState(() {
      _palavra = _palavras[Random().nextInt(_palavras.length)];
      _palavraOculta = List.generate(_palavra.length, (_) => "_");
      _letrasUsadas = [];
      _erros = 0;
      _gameOver = false;
    });
  }

  void _escolherLetra(String letra) {
    if (_gameOver || _letrasUsadas.contains(letra)) return;

    setState(() {
      _letrasUsadas.add(letra);

      if (_palavra.contains(letra)) {
        for (int i = 0; i < _palavra.length; i++) {
          if (_palavra[i] == letra) {
            _palavraOculta[i] = letra;
          }
        }

        if (!_palavraOculta.contains("_")) {
          _gameOver = true;
        }
      } else {
        _erros++;
        if (_erros >= _maxErros) {
          _gameOver = true;
        }
      }
    });
  }

  // =============================
  // DESENHO DA FORCA
  // =============================
  Widget _desenhoForca() {
    return CustomPaint(
      size: const Size(200, 250),
      painter: ForcaPainter(_erros),
    );
  }

  // =============================
  // TECLADO DE LETRAS RESPONSIVO
  // =============================
  Widget _buildTeclado() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: _alfabeto.map((letra) {
        final usado = _letrasUsadas.contains(letra);

        return SizedBox(
          width: 55,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  usado ? Colors.grey.shade300 : Colors.white,
              foregroundColor:
                  usado ? Colors.grey.shade600 : Colors.blue.shade700,
              elevation: usado ? 0 : 2,
              shape: const CircleBorder(),
            ),
            onPressed: usado || _gameOver ? null : () => _escolherLetra(letra),
            child: FittedBox(
              child: Text(
                letra,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  // =============================
  // TELA PRINCIPAL
  // =============================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Jogo da Forca",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              Center(child: _desenhoForca()),

              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _palavraOculta
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              e,
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),

              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Erros: $_erros / $_maxErros",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Mensagem de vitória / derrota
              if (_gameOver)
                Center(
                  child: Column(
                    children: [
                      Text(
                        _erros >= _maxErros
                            ? "Você perdeu! 😢"
                            : "Você ganhou! 🎉",
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Palavra: $_palavra",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),

              // Botões de ação
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: _novaPartida,
                    icon: const Icon(Icons.refresh),
                    label: const Text("Nova Partida"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 14),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _palavraOculta =
                            _palavra.split("").map((e) => e).toList();
                        _gameOver = true;
                      });
                    },
                    icon: const Icon(Icons.visibility),
                    label: const Text("Revelar"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 14),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              _buildTeclado(),
            ],
          ),
        ),
      ),
    );
  }
}

// =================================
// DESENHADOR DA FORCA
// =================================
class ForcaPainter extends CustomPainter {
  final int erros;
  ForcaPainter(this.erros);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke;

    // Estrutura fixa
    canvas.drawLine(Offset(size.width * 0.1, size.height), Offset(size.width * 0.9, size.height), paint);
    canvas.drawLine(Offset(size.width * 0.2, size.height), Offset(size.width * 0.2, 20), paint);
    canvas.drawLine(Offset(size.width * 0.2, 20), Offset(size.width * 0.6, 20), paint);
    canvas.drawLine(Offset(size.width * 0.6, 20), Offset(size.width * 0.6, 60), paint);

    // Desenho conforme erros
    if (erros >= 1) canvas.drawCircle(Offset(size.width * 0.6, 90), 30, paint); // cabeça
    if (erros >= 2) canvas.drawLine(Offset(size.width * 0.6, 120), Offset(size.width * 0.6, 200), paint); // tronco
    if (erros >= 3) canvas.drawLine(Offset(size.width * 0.6, 130), Offset(size.width * 0.5, 170), paint); // braço esq
    if (erros >= 4) canvas.drawLine(Offset(size.width * 0.6, 130), Offset(size.width * 0.7, 170), paint); // braço dir
    if (erros >= 5) canvas.drawLine(Offset(size.width * 0.6, 200), Offset(size.width * 0.5, 250), paint); // perna esq
    if (erros >= 6) canvas.drawLine(Offset(size.width * 0.6, 200), Offset(size.width * 0.7, 250), paint); // perna dir
  }

  @override
  bool shouldRepaint(covariant ForcaPainter oldDelegate) => oldDelegate.erros != erros;
}
