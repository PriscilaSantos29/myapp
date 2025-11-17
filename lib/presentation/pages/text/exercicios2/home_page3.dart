import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ConversorTemperaturaPage(),
    );
  }
}

class ConversorTemperaturaPage extends StatefulWidget {
  const ConversorTemperaturaPage({super.key});

  @override
  State<ConversorTemperaturaPage> createState() =>
      _ConversorTemperaturaPageState();
}

class _ConversorTemperaturaPageState extends State<ConversorTemperaturaPage> {
  final TextEditingController tempController = TextEditingController();

  String? opcaoSelecionada = "CtoF";
  String resultado = "";

  void converter() {
    double? valor = double.tryParse(tempController.text);

    if (valor == null) {
      setState(() {
        resultado = "Valor inválido";
      });
      return;
    }

    if (opcaoSelecionada == "CtoF") {
      double r = (valor * 9 / 5) + 32;
      setState(() => resultado = "${r.toStringAsFixed(1)} °F");
    } else {
      double r = (valor - 32) * 5 / 9;
      setState(() => resultado = "${r.toStringAsFixed(1)} °C");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Container(
          width: 340,
          height: 600,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Conversor de Temperatura",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.refresh, color: Colors.white),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Ícone grande
              const Center(
                child: Icon(
                  Icons.calculate_rounded,
                  color: Colors.blue,
                  size: 90,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Digite a Temperatura",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              TextField(
                controller: tempController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Digite aqui"),
              ),

              const SizedBox(height: 20),

              const Text(
                "Selecione uma das opções abaixo:",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Radio Buttons
              Column(
                children: [
                  RadioListTile(
                    title: const Text("Celsius para Fahrenheit"),
                    value: "CtoF",
                    groupValue: opcaoSelecionada,
                    onChanged: (value) {
                      setState(() => opcaoSelecionada = value.toString());
                    },
                  ),
                  RadioListTile(
                    title: const Text("Fahrenheit para Celsius"),
                    value: "FtoC",
                    groupValue: opcaoSelecionada,
                    onChanged: (value) {
                      setState(() => opcaoSelecionada = value.toString());
                    },
                  ),
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "Resultado",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(resultado, style: const TextStyle(fontSize: 18)),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: converter,
                  child: const Text(
                    "Converter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
