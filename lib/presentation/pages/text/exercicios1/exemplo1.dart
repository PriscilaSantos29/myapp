import 'package:flutter/material.dart';

class Exemplo1 extends StatefulWidget {
  const Exemplo1({super.key});

  @override
  State<Exemplo1> createState() => _Exemplo1State();
}

class _Exemplo1State extends State<Exemplo1> {
  final TextEditingController _precoAlcoolController = TextEditingController();
  final TextEditingController _precoGasolinaController = TextEditingController();
  String _resultado = '';
  String _opcaoSelecionada = 'OU';

  void _calcular() {
    double precoAlcool = double.tryParse(_precoAlcoolController.text) ?? 0;
    double precoGasolina = double.tryParse(_precoGasolinaController.text) ?? 0;

    if (precoAlcool > 0 && precoGasolina > 0) {
      double razao = precoAlcool / precoGasolina;
      setState(() {
        if (razao < 0.7) {
          _resultado = 'Álcool é mais vantajoso!';
        } else {
          _resultado = 'Gasolina é mais vantajosa!';
        }
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
        backgroundColor: Colors.blue,
        title: Text(
          'Álcool ou Gasolina',
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
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Álcool ou Gasolina',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildOpcaoButton('Álcool'),
                        _buildOpcaoButton('OU'),
                        _buildOpcaoButton('Gasolina'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Saiba qual a melhor opção para\nabastecimento do seu carro',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Preço Álcool, ex: 3.89',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _precoAlcoolController,
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
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Preço Gasolina, ex: 5.59',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.lightBlue[100],
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _precoGasolinaController,
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
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _calcular,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Calcular',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    if (_resultado.isNotEmpty) ...[
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          _resultado,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800],
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

  Widget _buildOpcaoButton(String texto) {
    bool isSelecionado = _opcaoSelecionada == texto;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelecionado ? Colors.blue[900] : Colors.blue[700],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _precoAlcoolController.dispose();
    _precoGasolinaController.dispose();
    super.dispose();
  }
}
