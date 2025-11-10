import 'package:flutter/material.dart';

class BeerDayPage extends StatefulWidget {
  const BeerDayPage({super.key});

  @override
  State<BeerDayPage> createState() => _BeerDayPageState();
}

class _BeerDayPageState extends State<BeerDayPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController ml1Controller = TextEditingController();
  final TextEditingController valor1Controller = TextEditingController();
  final TextEditingController ml2Controller = TextEditingController();
  final TextEditingController valor2Controller = TextEditingController();

  String resultado = "";

  void calcular() {
    final double? ml1 = double.tryParse(ml1Controller.text);
    final double? valor1 = double.tryParse(valor1Controller.text);
    final double? ml2 = double.tryParse(ml2Controller.text);
    final double? valor2 = double.tryParse(valor2Controller.text);

    if (ml1 == null || valor1 == null || ml2 == null || valor2 == null) {
      setState(() {
        resultado = "Por favor, preencha todos os campos corretamente.";
      });
      return;
    }

    final precoPorMl1 = valor1 / ml1;
    final precoPorMl2 = valor2 / ml2;

    String melhor;
    if (precoPorMl1 < precoPorMl2) {
      melhor =
          "O produto 1 é mais vantajoso! (R\$ ${(precoPorMl1 * 1000).toStringAsFixed(2)} por litro)";
    } else if (precoPorMl2 < precoPorMl1) {
      melhor =
          "O produto 2 é mais vantajoso! (R\$ ${(precoPorMl2 * 1000).toStringAsFixed(2)} por litro)";
    } else {
      melhor = "Ambos os produtos têm o mesmo custo-benefício.";
    }

    setState(() {
      resultado = melhor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          decoration: BoxDecoration(
            color: const Color(0xFFF8D9A0),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Cabeçalho
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                color: const Color(0xFFF4A300),
                child: const Center(
                  child: Text(
                    'Beer Day',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Imagem
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/931/931949.png',
                height: 80,
              ),

              const SizedBox(height: 10),

              // Formulário
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Digite a quantidade de ML do produto, ex.: 350',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      TextFormField(
                        controller: ml1Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Digite a quantidade de ML do produto',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: valor1Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Digite o valor, ex.: 3.99',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: ml2Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Digite a quantidade de ML do produto',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: valor2Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Digite o valor, ex.: 3.99',
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF4A300),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: calcular,
                          child: const Text(
                            'Calcular',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        resultado,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
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
