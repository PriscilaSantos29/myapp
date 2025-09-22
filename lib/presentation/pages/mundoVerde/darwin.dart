import 'package:flutter/material.dart';
import 'quiz_avancado.dart';

class DarwinPage extends StatefulWidget {
  const DarwinPage({super.key});

  @override
  State<DarwinPage> createState() => _DarwinPageState();
}

class _DarwinPageState extends State<DarwinPage> {
  bool mostrarTextoIntroducao = false;
  bool mostrarTextoVariacoes = false;
  bool mostrarTextoLuta = false;
  bool mostrarTextoSelecao = false;
  bool mostrarTextoEspeciacao = false;

  final String textoIntroducao = '''
Charles Darwin, naturalista inglês do século XIX, observou plantas e animais em várias partes do mundo (como nas Ilhas Galápagos) e concluiu que as espécies mudam ao longo do tempo.

Ele explicou como isso acontece com a ideia de seleção natural.

Sua teoria revolucionou a biologia e continua sendo a base da compreensão científica sobre a evolução das espécies.

A viagem no navio HMS Beagle (1831-1836) foi fundamental para suas descobertas.
''';

  final String textoVariacoes = '''
O que Darwin observou:

Em qualquer grupo de seres vivos, existem diferenças naturais: tamanho, cor, força, resistência a doenças etc.

Essas diferenças surgem de forma espontânea, sem que o animal "escolha" ter.

Exemplos:

• Tentilhões das Galápagos com bicos de tamanhos diferentes
• Tartarugas com cascos variados em cada ilha
• Plantas com folhas de formatos distintos
• Animais com pelagem de cores diversas

Origem das variações:

Hoje sabemos que essas diferenças vêm de mutações genéticas e da reprodução sexuada.
''';

  final String textoLuta = '''
Por que acontece:

Os recursos da natureza (alimento, espaço, abrigo) são limitados.

Por isso, os indivíduos competem entre si para sobreviver e se reproduzir.

Tipos de competição:

• Por alimento: nem todos conseguem comer o suficiente
• Por território: espaço para viver e criar filhotes
• Por parceiros: reprodução e continuidade da espécie
• Contra predadores: evitar ser capturado
• Contra doenças: resistir a infecções

Consequência:

Nem todos os indivíduos conseguem sobreviver até a idade reprodutiva ou deixar descendentes.
''';

  final String textoSelecao = '''
Como funciona:

Aqueles que possuem características que ajudam a viver e reproduzir em um determinado ambiente têm mais chances de deixar descendentes.

Essas características vantajosas tornam-se cada vez mais comuns nas gerações seguintes.

Exemplo clássico:

• Girafas com pescoços mais longos alcançam folhas mais altas
• Conseguem mais alimento durante escassez
• Sobrevivem melhor e têm mais filhotes
• Seus filhotes herdam pescoços longos
• Ao longo de muitas gerações, pescoços longos se tornam padrão

Diferença de Lamarck:

Darwin não dizia que o uso alonga o pescoço, mas que girafas com pescoços naturalmente mais longos têm vantagem.
''';

  final String textoEspeciacao = '''
O processo:

Com o tempo, as diferenças vão se acumulando.

Se populações de uma mesma espécie ficam isoladas e acumulam variações diferentes, podem surgir novas espécies.

Como ocorre:

• Uma população se divide (por montanhas, rios, oceanos)
• Cada grupo enfrenta condições ambientais diferentes
• A seleção natural age de forma distinta em cada grupo
• Ao longo de milhares de anos, acumulam-se diferenças
• Eventualmente, os grupos se tornam espécies diferentes

Evidências:

• Fósseis mostram mudanças ao longo do tempo
• Anatomia comparada revela parentesco entre espécies
• Distribuição geográfica das espécies
• Hoje, também temos evidências genéticas (DNA)
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "TEORIA DE DARWIN",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            
            // Ilustração da Teoria de Darwin
Container(
  height: 220,
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
          "assets/img/darwin.jpg",
          height: 120,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        "SELEÇÃO NATURAL",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade800,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        "Charles Darwin (1809-1882)",
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
                  "Quem foi Darwin?",
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

            // Botão "Variações"
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
                onPressed: () => setState(() => mostrarTextoVariacoes = !mostrarTextoVariacoes),
                child: const Text(
                  "Variações dentro da espécie",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoVariacoes)
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
                  textoVariacoes,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Luta pela sobrevivência"
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
                onPressed: () => setState(() => mostrarTextoLuta = !mostrarTextoLuta),
                child: const Text(
                  "Luta pela sobrevivência",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoLuta)
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
                  textoLuta,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Seleção Natural"
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
                onPressed: () => setState(() => mostrarTextoSelecao = !mostrarTextoSelecao),
                child: const Text(
                  "Seleção Natural",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoSelecao)
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
                  textoSelecao,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),

            // Botão "Formação de novas espécies"
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
                onPressed: () => setState(() => mostrarTextoEspeciacao = !mostrarTextoEspeciacao),
                child: const Text(
                  "Formação de novas espécies",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (mostrarTextoEspeciacao)
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
                  textoEspeciacao,
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
                        builder: (context) => const QuizAvancadoPage(),
                      ),
                    );
                  },
                  child: const Text("Quiz Avançado 🎯"),
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
