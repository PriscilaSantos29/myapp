import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/mundoVerde/nivel_intermediario.dart';

class BriofitasPage extends StatefulWidget {
  const BriofitasPage({super.key});

  @override
  State<BriofitasPage> createState() => _BriofitasPageState();
}

class _BriofitasPageState extends State<BriofitasPage> {
  String? textoSelecionado;

  final String textoOqueSao = '''
As briófitas são plantas não vasculares — não têm xilema nem floema — geralmente de porte pequeno, que vivem em ambientes úmidos ou sombreados.  
Incluem os musgos, hepáticas e antóceros, reproduzindo-se por esporos, sem formar sementes, frutos ou flores.  
Sua fase dominante é o gametófito, enquanto o esporófito permanece nutrido por ele. 
''';

  final String textoCaracteristicas = '''
As briófitas são plantas avasculares, ou seja, não possuem vasos condutores de seiva (xilema e floema).  
Por isso, são de pequeno porte e dependem da difusão para transportar água e nutrientes.  
Necessitam de ambientes úmidos e sombreados para sobreviver, já que dependem da água para a reprodução.  
Seu ciclo de vida apresenta predominância da fase gametofítica.
''';

  final String textoEstrutura = '''
O corpo das briófitas não apresenta raiz, caule e folhas verdadeiras, mas sim estruturas semelhantes chamadas de rizoides (fixação ao substrato), cauloides (semelhantes ao caule) e filoides (semelhantes às folhas).  
Não possuem flores, sementes nem frutos, e sua reprodução ocorre por meio de esporos.
''';

  final String textoTipos = '''
Existem três grupos principais de briófitas:  

- Musgos: os mais conhecidos, geralmente de aspecto macio e verde.  
- Hepáticas: apresentam corpo achatado e foliáceo, lembrando um fígado.  
- Antóceros: possuem esporófito alongado em forma de chifre.  
''';

  final String textoImportancia = '''
As briófitas desempenham papel fundamental nos ecossistemas:  

- Retêm água no ambiente, ajudando a manter a umidade.  
- Atuam na formação do solo, pois participam do processo de intemperismo das rochas.  
- Servem de abrigo e alimento para pequenos organismos.  
- São bioindicadoras, já que são sensíveis à poluição atmosférica.  
''';

  void mostrarTexto(String titulo) {
    setState(() {
      if (textoSelecionado == titulo) {
        textoSelecionado = null; // esconde se já estiver aberto
      } else {
        textoSelecionado = titulo;
      }
    });
  }

  String? getTexto(String titulo) {
    switch (titulo) {
      case "O que são?":
        return textoOqueSao;
      case "Características":
        return textoCaracteristicas;
      case "Estrutura":
        return textoEstrutura;
      case "Tipos de briófitas":
        return textoTipos;
      case "Importância ecológica":
        return textoImportancia;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> botoes = [
      "O que são?",
      "Características",
      "Estrutura",
      "Tipos de briófitas",
      "Importância ecológica"
    ];

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

            // Geração automática dos botões
            ...botoes.map((titulo) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade600,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () => mostrarTexto(titulo),
                        child: Text(
                          titulo,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    if (textoSelecionado == titulo)
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
                          getTexto(titulo)!,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                  ],
                )),
            const SizedBox(height: 20),

            // Botões inferiores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const IntermediarioScreen()),
                  );
                },
                child: const Text("Voltar"),
              ),
               ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PteridofitasPage()),
                    );
                  },
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
