import 'package:flutter/material.dart';
import 'dart:math';


class ForcaHome extends StatefulWidget {
  @override
  _ForcaHomeState createState() => _ForcaHomeState();
}

class _ForcaHomeState extends State<ForcaHome> {
  // Palavra secreta - pode ser expandida ou carregada de um arquivo/serviço
  final List<String> _palavras = [
    'FLUTTER',
    'DART',
    'PROGRAMACAO',
    'WIDGET',
    'ESTADO',
    'PROJETO',
    'MATERIAL',
    'ESTILOS',
    'APLICACAO',
    'FORCA',
  ];

  String _palavra = '';
  Set<String> _letrasEscolhidas = {};
  int _erros = 0;
  final int _maxErros = 6; // número de partes do boneco
  bool _gameOver = false;
  bool _vitoria = false;

  @override
  void initState() {
    super.initState();
    _novaPartida();
  }

  void _novaPartida() {
    final rnd = Random();
    setState(() {
      _palavra = _palavras[rnd.nextInt(_palavras.length)];
      _letrasEscolhidas.clear();
      _erros = 0;
      _gameOver = false;
      _vitoria = false;
    });
  }

  void _escolherLetra(String letra) {
    if (_gameOver) return;
    letra = letra.toUpperCase();

    setState(() {
      _letrasEscolhidas.add(letra);
      if (!_palavra.contains(letra)) {
        _erros++;
        if (_erros >= _maxErros) {
          _gameOver = true;
          _vitoria = false;
        }
      } else {
        // conferir se todas as letras foram adivinhadas
        final ganhou =
            _palavra
                .split('')
                .where((c) => c != ' ')
                .toSet()
                .difference(_letrasEscolhidas)
                .isEmpty;
        if (ganhou) {
          _gameOver = true;
          _vitoria = true;
        }
      }
    });
  }

  Widget _buildPalavra() {
    List<Widget> letras = [];
    for (var ch in _palavra.split('')) {
      if (ch == ' ') {
        letras.add(SizedBox(width: 12));
      } else {
        final visivel = _letrasEscolhidas.contains(ch);
        letras.add(
          Container(
            width: 28,
            height: 40,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.5, color: Colors.black87),
              ),
            ),
            child: Text(
              visivel ? ch : '',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }
    }

    return Wrap(alignment: WrapAlignment.center, children: letras);
  }

  Widget _buildTeclado() {
    const letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 7,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      children:
          letras.split('').map((l) {
            final usado = _letrasEscolhidas.contains(l);
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  backgroundColor: usado ? Colors.grey.shade400 : null,
                ),
                onPressed: usado || _gameOver ? null : () => _escolherLetra(l),
                child: Text(
                  l,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }).toList(),
    );
  }

  Widget _buildPainelInfo() {
    return Column(
      children: [
        Text('Erros: $_erros / $_maxErros', style: TextStyle(fontSize: 16)),
        SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: _novaPartida,
              icon: Icon(Icons.refresh),
              label: Text('Nova Partida'),
            ),
            SizedBox(width: 12),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  // revelar a palavra e encerrar
                  _letrasEscolhidas.addAll(_palavra.split(''));
                  _gameOver = true;
                  _vitoria = false;
                });
              },
              icon: Icon(Icons.remove_red_eye),
              label: Text('Revelar'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildResultado() {
    if (!_gameOver) return SizedBox.shrink();

    final texto = _vitoria ? 'Você ganhou! 🎉' : 'Você perdeu 😞';
    final sub =
        _vitoria ? 'Parabéns! Palavra: ' + _palavra : 'Palavra: ' + _palavra;

    return Column(
      children: [
        SizedBox(height: 12),
        Text(
          texto,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text(sub, style: TextStyle(fontSize: 18)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jogo da Forca')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            children: [
              // área do boneco
              Expanded(
                flex: 5,
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: CustomPaint(
                      painter: ForcaPainter(erros: _erros),
                      child: Container(),
                    ),
                  ),
                ),
              ),

              // palavra
              SizedBox(height: 8),
              _buildPalavra(),

              // resultado e botões
              _buildResultado(),
              SizedBox(height: 8),
              _buildPainelInfo(),

              // teclado
              SizedBox(height: 8),
              Expanded(
                flex: 5,
                child: SingleChildScrollView(child: _buildTeclado()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForcaPainter extends CustomPainter {
  final int erros;
  ForcaPainter({required this.erros});

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black
          ..strokeWidth = 6.0
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final w = size.width;
    final h = size.height;

    // Desenhar estrutura da forca (sempre visível)
    // base
    canvas.drawLine(
      Offset(w * 0.05, h * 0.95),
      Offset(w * 0.6, h * 0.95),
      paint,
    );
    // poste vertical
    canvas.drawLine(
      Offset(w * 0.15, h * 0.95),
      Offset(w * 0.15, h * 0.1),
      paint,
    );
    // haste horizontal
    canvas.drawLine(Offset(w * 0.15, h * 0.1), Offset(w * 0.5, h * 0.1), paint);
    // corda
    canvas.drawLine(Offset(w * 0.5, h * 0.1), Offset(w * 0.5, h * 0.22), paint);

    // Partes do boneco, desenhadas conforme erros
    // 1 - cabeça
    if (erros > 0) {
      canvas.drawCircle(Offset(w * 0.5, h * 0.33), h * 0.08, paint);
    }

    // 2 - tronco
    if (erros > 1) {
      canvas.drawLine(
        Offset(w * 0.5, h * 0.41),
        Offset(w * 0.5, h * 0.62),
        paint,
      );
    }

    // 3 - braço esquerdo
    if (erros > 2) {
      canvas.drawLine(
        Offset(w * 0.5, h * 0.46),
        Offset(w * 0.38, h * 0.55),
        paint,
      );
    }

    // 4 - braço direito
    if (erros > 3) {
      canvas.drawLine(
        Offset(w * 0.5, h * 0.46),
        Offset(w * 0.62, h * 0.55),
        paint,
      );
    }

    // 5 - perna esquerda
    if (erros > 4) {
      canvas.drawLine(
        Offset(w * 0.5, h * 0.62),
        Offset(w * 0.4, h * 0.78),
        paint,
      );
    }

    // 6 - perna direita
    if (erros > 5) {
      canvas.drawLine(
        Offset(w * 0.5, h * 0.62),
        Offset(w * 0.6, h * 0.78),
        paint,
      );
    }

    // se quiser adicionar mais detalhes (olhos X, boca), pode usar erros > 6 etc.
  }

  @override
  bool shouldRepaint(covariant ForcaPainter oldDelegate) {
    return oldDelegate.erros != erros;
  }
}
