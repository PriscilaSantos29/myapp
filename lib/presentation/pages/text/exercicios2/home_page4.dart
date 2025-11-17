import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para o formatador de input


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabuada',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define o estilo do AppBar para combinar com a imagem
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // Cor do texto e ícones
          elevation: 1,
        ),
        // Define o estilo do botão para combinar
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Cor de fundo do botão
            foregroundColor: Colors.white, // Cor do texto do botão
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bordas levemente arredondadas
            ),
          ),
        ),
      ),
      home: const TabuadaScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabuadaScreen extends StatefulWidget {
  const TabuadaScreen({Key? key}) : super(key: key);

  @override
  _TabuadaScreenState createState() => _TabuadaScreenState();
}

class _TabuadaScreenState extends State<TabuadaScreen> {
  // Controlador para ler o valor do campo de texto
  final TextEditingController _controller = TextEditingController();
  
  // String para armazenar o resultado da tabuada
  String _resultado = "";

  // Função para calcular a tabuada
  void _calcularTabuada() {
    // Tenta converter o texto para um número inteiro
    final int? numero = int.tryParse(_controller.text);

    // Validação
    if (numero == null || numero < 1 || numero > 10) {
      // Se for inválido, atualiza o estado com uma mensagem de erro
      setState(() {
        _resultado = "Por favor, digite um número válido de 1 a 10.";
      });
      return; // Para a execução
    }

    // Se for válido, calcula a tabuada
    // Usamos um StringBuffer para construir a string de forma eficiente
    final StringBuffer buffer = StringBuffer();
    for (int i = 1; i <= 10; i++) {
      buffer.writeln("$numero x $i = ${numero * i}"); // Adiciona cada linha
    }

    // Atualiza o estado com o resultado final
    setState(() {
      _resultado = buffer.toString();
    });
  }

  // Função para limpar os campos
  void _limparTudo() {
    _controller.clear();
    setState(() {
      _resultado = "";
    });
  }
  
  @override
  void dispose() {
    // Limpa o controlador quando o widget for descartado
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabuada de um Número'),
        actions: [
          // Ícone de Refresh (Atualizar)
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _limparTudo, // Chama a função de limpar
          ),
        ],
      ),
      // SingleChildScrollView evita que o teclado cubra os campos
      body: SingleChildScrollView(
        // Padding para dar espaçamento nas laterais
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          // Column para organizar os widgets verticalmente
          child: Column(
            // Faz os widgets filhos (como o botão) esticarem na largura
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              // Ícone principal
              Icon(
                Icons.calculate_outlined, // Ícone de calculadora
                size: 100,
                color: Colors.blue[700],
              ),
              const SizedBox(height: 30),
              // Texto de instrução
              const Text(
                'Digite um número de 1 a 10',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              // Campo de texto para o número
              TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
                // Define o teclado para mostrar apenas números
                keyboardType: TextInputType.number,
                // Limita a entrada para apenas dígitos
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(2), // Limita a 2 dígitos (até 10)
                ],
                decoration: const InputDecoration(
                  hintText: 'Ex: 5',
                  // Linha na parte inferior
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Botão para calcular
              ElevatedButton(
                onPressed: _calcularTabuada, // Chama a função de calcular
                child: const Text('Calcular Tabuada'),
              ),
              const SizedBox(height: 40),
              // Área para mostrar o resultado
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.5, // Espaçamento entre as linhas
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}