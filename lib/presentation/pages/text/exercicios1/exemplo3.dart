import 'package:flutter/material.dart';

class Exemplo3 extends StatefulWidget {
  const Exemplo3({super.key});

  @override
  State<Exemplo3> createState() => _Exemplo3State();
}

class _Exemplo3State extends State<Exemplo3> {
  final TextEditingController _quantidadeMlController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();
  final TextEditingController _quantidadeMlProdutoController = TextEditingController();
  final TextEditingController _valorProdutoController = TextEditingController();
  String _resultado = '';

  void _calcular() {
    double quantidadeMl = double.tryParse(_quantidadeMlController.text) ?? 0;
    double valor = double.tryParse(_valorController.text) ?? 0;
    double quantidadeMlProduto = double.tryParse(_quantidadeMlProdutoController.text) ?? 0;
    double valorProduto = double.tryParse(_valorProdutoController.text) ?? 0;

    if (quantidadeMl > 0 && valor > 0 && quantidadeMlProduto > 0 && valorProduto > 0) {
      // Calcular custo por ML de cada produto
      double custoPorMl1 = valor / quantidadeMl;
      double custoPorMl2 = valorProduto / quantidadeMlProduto;

      setState(() {
        if (custoPorMl1 < custoPorMl2) {
          _resultado = 'O primeiro produto é mais vantajoso!\nCusto por ML: R\$ ${custoPorMl1.toStringAsFixed(4)}';
        } else if (custoPorMl2 < custoPorMl1) {
          _resultado = 'O segundo produto é mais vantajoso!\nCusto por ML: R\$ ${custoPorMl2.toStringAsFixed(4)}';
        } else {
          _resultado = 'Ambos os produtos têm o mesmo custo-benefício!';
        }
      });
    } else {
      setState(() {
        _resultado = 'Por favor, insira valores válidos em todos os campos';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 228, 241),
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: Text(
          'Beer Day',
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
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.3),
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
                        color: Colors.orange[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Beer Day',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Ícone de cerveja
                    Center(
                      child: Icon(
                        Icons.sports_bar,
                        size: 80,
                        color: Colors.orange[800],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Primeiro produto
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Digite a quantidade de ML do produto, ex: 350',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _quantidadeMlController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: '350',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixText: 'ML',
                              suffixStyle: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Digite o valor, ex.: 3.99',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _valorController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: '3.99',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixText: 'R\$ ',
                              prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Segundo produto
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Digite a quantidade de ML do pro...',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _quantidadeMlProdutoController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: '350',
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixText: 'ML',
                              suffixStyle: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Digite o valor, ex.: 3.99',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            controller: _valorProdutoController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              hintText: '3.99',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixText: 'R\$ ',
                              prefixStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _calcular,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[700],
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
                          border: Border.all(color: Colors.orange[700]!, width: 2),
                        ),
                        child: Text(
                          _resultado,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[900],
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
    _quantidadeMlController.dispose();
    _valorController.dispose();
    _quantidadeMlProdutoController.dispose();
    _valorProdutoController.dispose();
    super.dispose();
  }
}
