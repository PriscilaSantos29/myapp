import 'package:flutter/material.dart';

class QuizAvancadoPage extends StatefulWidget {
  const QuizAvancadoPage({super.key});

  @override
  State<QuizAvancadoPage> createState() => _QuizAvancadoPageState();
}

class _QuizAvancadoPageState extends State<QuizAvancadoPage> {
  int perguntaAtual = 0;
  int pontuacao = 0;
  List<String?> respostasUsuario = List.filled(12, null);
  bool quizConcluido = false;

  final List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'O que é gene?',
      'alternativas': [
        'Parte do citoplasma',
        'Segmento do DNA que carrega uma informação',
        'Tipo de proteína',
        'Molécula de água'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Qual é a função principal do DNA?',
      'alternativas': [
        'Produzir energia para a célula',
        'Armazenar e transmitir a informação genética',
        'Transportar oxigênio',
        'Produzir vitaminas'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Como chamamos a forma enrolada do DNA dentro do núcleo celular?',
      'alternativas': [
        'Ribossomo',
        'Cromossomo',
        'Lisossomo',
        'Centríolo'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Quando uma base do DNA é trocada por outra, ocorre uma:',
      'alternativas': [
        'Inserção',
        'Deleção',
        'Substituição (mutação pontual)',
        'Fusão celular'
      ],
      'respostaCorreta': 2,
    },
    {
      'pergunta': 'A variabilidade genética é importante porque:',
      'alternativas': [
        'Deixa todos os indivíduos iguais',
        'Permite adaptação e evolução da espécie',
        'Faz os genes desaparecerem',
        'Impede a reprodução'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Qual fator não aumenta a variabilidade genética?',
      'alternativas': [
        'Reprodução sexuada',
        'Mutação',
        'Radiação natural',
        'Clonagem artificial'
      ],
      'respostaCorreta': 3,
    },
    {
      'pergunta': 'Segundo Lamarck, as girafas têm pescoço longo porque:',
      'alternativas': [
        'Indivíduos com pescoço longo sobreviveram mais',
        'Usaram o pescoço para alcançar folhas e transmitiram essa característica',
        'O ambiente não influencia',
        'Sofreram mutação por acaso'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Segundo Darwin, as girafas têm pescoço longo porque:',
      'alternativas': [
        'Alongaram o pescoço durante a vida',
        'Houve seleção natural favorecendo as de pescoço mais longo',
        'O clima mudou rapidamente',
        'As folhas se tornaram mais nutritivas'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'O que é seleção natural?',
      'alternativas': [
        'Escolha feita pelos seres humanos',
        'Sobrevivência e reprodução dos mais adaptados ao ambiente',
        'Processo de clonagem',
        'Mudança voluntária do organismo'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Quando duas populações de uma mesma espécie ficam isoladas e acumulam muitas diferenças genéticas, ocorre:',
      'alternativas': [
        'Mutação instantânea',
        'Formação de nova espécie (especiação)',
        'Extinção imediata',
        'Fertilização cruzada'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Em relação aos genes, alelo significa:',
      'alternativas': [
        'Tipo de proteína',
        'Variante de um mesmo gene',
        'Molécula de glicose',
        'Cromossomo inteiro'
      ],
      'respostaCorreta': 1,
    },
    {
      'pergunta': 'Se uma doença genética só aparece quando a pessoa recebe dois genes defeituosos (um do pai e um da mãe), dizemos que ela é:',
      'alternativas': [
        'Dominante',
        'Recessiva',
        'Letal obrigatória',
        'Sem heredabilidade'
      ],
      'respostaCorreta': 1,
    },
  ];

  void responderPergunta(int respostaSelecionada) {
    setState(() {
      respostasUsuario[perguntaAtual] = 
          perguntas[perguntaAtual]['alternativas'][respostaSelecionada];
      
      if (respostaSelecionada == perguntas[perguntaAtual]['respostaCorreta']) {
        pontuacao++;
      }
    });
  }

  void proximaPergunta() {
    if (perguntaAtual < perguntas.length - 1) {
      setState(() {
        perguntaAtual++;
      });
    } else {
      setState(() {
        quizConcluido = true;
      });
    }
  }

  void perguntaAnterior() {
    if (perguntaAtual > 0) {
      setState(() {
        perguntaAtual--;
      });
    }
  }

  void reiniciarQuiz() {
    setState(() {
      perguntaAtual = 0;
      pontuacao = 0;
      respostasUsuario = List.filled(12, null);
      quizConcluido = false;
    });
  }

  String obterMensagemResultado() {
    double porcentagem = (pontuacao / perguntas.length) * 100;
    if (porcentagem >= 90) {
      return 'Excelente! Você domina o conteúdo!';
    } else if (porcentagem >= 70) {
      return 'Muito bom! Continue estudando!';
    } else if (porcentagem >= 50) {
      return 'Bom desempenho, mas pode melhorar!';
    } else {
      return 'É importante revisar o conteúdo!';
    }
  }

  Color obterCorResultado() {
    double porcentagem = (pontuacao / perguntas.length) * 100;
    if (porcentagem >= 70) {
      return Colors.green;
    } else if (porcentagem >= 50) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB6F3B6),
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
        title: const Text(
          "QUIZ AVANÇADO",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: quizConcluido ? _buildResultado() : _buildQuiz(),
    );
  }

  Widget _buildQuiz() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progresso
            Container(
              width: double.infinity,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: (perguntaAtual + 1) / perguntas.length,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            // Número da pergunta
            Text(
              'Pergunta ${perguntaAtual + 1} de ${perguntas.length}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
            const SizedBox(height: 20),

            // Pergunta
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
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
                perguntas[perguntaAtual]['pergunta'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Alternativas
            ...List.generate(
              perguntas[perguntaAtual]['alternativas'].length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: respostasUsuario[perguntaAtual] == 
                          perguntas[perguntaAtual]['alternativas'][index]
                          ? Colors.green.shade700
                          : Colors.green.shade400,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: respostasUsuario[perguntaAtual] == null
                        ? () => responderPergunta(index)
                        : null,
                    child: Text(
                      '${String.fromCharCode(97 + index)}) ${perguntas[perguntaAtual]['alternativas'][index]}',
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Botões de navegação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade600,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: perguntaAtual > 0 ? perguntaAnterior : null,
                  child: const Text("← Anterior"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: respostasUsuario[perguntaAtual] != null
                      ? proximaPergunta
                      : null,
                  child: Text(perguntaAtual == perguntas.length - 1 
                      ? "Finalizar" 
                      : "Próxima →"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultado() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Título do resultado
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
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
              child: Column(
                children: [
                  Icon(
                    Icons.quiz,
                    size: 60,
                    color: obterCorResultado(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Quiz Concluído!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: obterCorResultado(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sua pontuação: $pontuacao/${perguntas.length}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${((pontuacao / perguntas.length) * 100).toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 18,
                      color: obterCorResultado(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    obterMensagemResultado(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Revisão das respostas
            Container(
              width: double.infinity,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Revisão das Respostas:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(
                    perguntas.length,
                    (index) {
                      bool acertou = respostasUsuario[index] ==
                          perguntas[index]['alternativas'][perguntas[index]['respostaCorreta']];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              acertou ? Icons.check_circle : Icons.cancel,
                              color: acertou ? Colors.green : Colors.red,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Pergunta ${index + 1}: ${acertou ? 'Correta' : 'Incorreta'}',
                                style: TextStyle(
                                  color: acertou ? Colors.green.shade700 : Colors.red.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Botões de ação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade600,
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
                  onPressed: reiniciarQuiz,
                  child: const Text("Fazer Novamente"),
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
