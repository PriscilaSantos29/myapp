import 'package:flutter/material.dart';

class ImcCalculatorPage extends StatefulWidget {
  const ImcCalculatorPage({super.key});

  @override
  State<ImcCalculatorPage> createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();

  String resultado = "";

  void calcularIMC() {
    double? altura = double.tryParse(alturaController.text);
    double? peso = double.tryParse(pesoController.text);

    if (altura == null || peso == null) {
      setState(() {
        resultado = "Valores inválidos";
      });
      return;
    }

    double imc = peso / (altura * altura);
    String classificacao = "";

    if (imc < 18.5) {
      classificacao = "Magreza";
    } else if (imc < 24.9) {
      classificacao = "Normal";
    } else if (imc < 29.9) {
      classificacao = "Sobrepeso";
    } else if (imc < 39.9) {
      classificacao = "Obesidade";
    } else {
      classificacao = "Obesidade Grave";
    }

    setState(() {
      resultado = "${imc.toStringAsFixed(1)} - $classificacao";
    });
  }

  void resetCampos() {
    alturaController.clear();
    pesoController.clear();
    setState(() => resultado = "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculadora de IMC",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: resetCampos,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // Ícone grande
            Icon(Icons.calculate, size: 100, color: Colors.blue[400]),

            const SizedBox(height: 30),

            // Campo altura
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Digite sua Altura",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "1.70",
              ),
            ),
            const Divider(height: 30),

            // Campo peso
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Digite seu Peso",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "80"),
            ),
            const Divider(height: 30),

            // Resultado
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Resultado do IMC",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            // Botão calcular
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: calcularIMC,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  "Calcular IMC",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
