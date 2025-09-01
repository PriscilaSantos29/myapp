import 'package:flutter/material.dart';

class BriofitasPage extends StatefulWidget {
  const BriofitasPage({super.key});

  @override
  State<BriofitasPage> createState() => _BriofitasPageState();
}

class _BriofitasPageState extends State<BriofitasPage> {
  bool mostrarTexto = false;

  final String textoOqueSao = '''
As briófitas são plantas não vasculares — não têm xilema nem floema — geralmente de porte pequeno, que vivem em ambientes úmidos ou sombreados.  
Incluem os musgos, hepáticas e antóceros, reproduzindo-se por esporos, sem formar sementes, frutos ou flores.  
Sua fase dominante é o gametófito, enquanto o esporófito permanece nutrido por ele.  
:contentReference[oaicite:1]{index=1}
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "BRIÓFITAS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Image.asset(
              'assets/img/briofitas.png',
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade600,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => setState(() => mostrarTexto = !mostrarTexto),
              child: const Text(
                "O que são?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            if (mostrarTexto)
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
            ...[
              "Características",
              "Estrutura",
              "Tipos de briófitas",
              "Importância ecológica",
            ].map(
              (titulo) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 20,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(titulo, style: const TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Voltar ao menu"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Pteridófitas ➝"),
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
