import 'package:flutter/material.dart';

class Exemplo2 extends StatefulWidget {
  const Exemplo2({super.key});

  @override
  State<Exemplo2> createState() => _Exemplo2State();
}

class _Exemplo2State extends State<Exemplo2> {
  final TextEditingController _valorRealController = TextEditingController();
  final TextEditingController _valorDolarController = TextEditingController();
  String _resultado = '';

  void _converter() {
    double valorReal = double.tryParse(_valorRealController.text) ?? 0;
    double valorDolar = double.tryParse(_valorDolarController.text) ?? 0;

    if (valorReal > 0 && valorDolar > 0) {
      double taxaCambio = valorDolar / valorReal;
      double conversao = valorReal * taxaCambio;
      setState(() {
        _resultado = 'Valor em Dólar: US\$ ${conversao.toStringAsFixed(2)}';
      });
    } else {
      setState(() {
        _resultado = 'Por favor, insira valores válidos';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: Text(
          'Conversor de Moeda',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.amber[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Conversor de Real para Dólar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30),
                    Icon(
                      Icons.attach_money,
                      size: 80,
                      color: Colors.amber[700],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Digite o valor em reais R\$, ex: 5...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.amber[100],
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _valorRealController,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: '0.00',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixText: 'R\$ ',
                        prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Digite o valor do dólar US\$, ex: 5...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.amber[100],
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _valorDolarController,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: '0.00',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixText: 'US\$ ',
                        prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _converter,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[700],
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Converter',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    if (_resultado.isNotEmpty) ...[
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          _resultado,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _valorRealController.dispose();
    _valorDolarController.dispose();
    super.dispose();
  }
}
