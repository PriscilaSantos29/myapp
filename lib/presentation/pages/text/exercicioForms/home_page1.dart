import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AlcoolGasolina(),
  ));
}


class AlcoolGasolina extends StatefulWidget {
  @override
  State<AlcoolGasolina> createState() => _AlcoolGasolinaState();
}


class _AlcoolGasolinaState extends State<AlcoolGasolina> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();


  String resultado = "Informe os preços para calcular";


  void calcular() {
    double? alcool = double.tryParse(alcoolController.text);
    double? gasolina = double.tryParse(gasolinaController.text);


    if (alcool == null || gasolina == null) {
      setState(() {
        resultado = "Valores inválidos. Tente novamente.";
      });
      return;
    }


    if ((alcool / gasolina) < 0.7) {
      setState(() {
        resultado = "Compensa usar Álcool ✅";
      });
    } else {
      setState(() {
        resultado = "Compensa usar Gasolina ✅";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Saiba qual a melhor opção para abastecimento do seu carro",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: alcoolController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Álcool, ex: 3.89",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: gasolinaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Gasolina, ex: 5.59",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
              onPressed: calcular,
              child: const Text("Calcular"),
            ),
            const SizedBox(height: 20),
            Text(
              resultado,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
