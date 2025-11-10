import 'package:flutter/material.dart';


class ConversorApp extends StatelessWidget {
  const ConversorApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Real para Dólar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFFFC107), // amarelo
      ),
      home: const ConversorPage(),
    );
  }
}


class ConversorPage extends StatefulWidget {
  const ConversorPage({super.key});


  @override
  State<ConversorPage> createState() => _ConversorPageState();
}


class _ConversorPageState extends State<ConversorPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _realController = TextEditingController();
  final TextEditingController _taxaController = TextEditingController();


  String _resultado = '';


  void _converter() {
    final double? valorReal = double.tryParse(_realController.text.replaceAll(',', '.'));
    final double? taxaCambio = double.tryParse(_taxaController.text.replaceAll(',', '.'));


    if (valorReal == null || taxaCambio == null || taxaCambio == 0) {
      setState(() {
        _resultado = 'Informe valores válidos para Real e taxa de câmbio.';
      });
      return;
    }


    final double valorDolar = valorReal / taxaCambio;
    setState(() {
      _resultado = 'US\$ ${valorDolar.toStringAsFixed(2)}';
    });
  }


  @override
  void dispose() {
    _realController.dispose();
    _taxaController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: const Color(0xFFFFC107),
                  child: const Center(
                    child: Text(
                      'Conversor de Real para Dólar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Icon(
                  Icons.attach_money,
                  size: 80,
                  color: Color(0xFFFFC107),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _realController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Digite o valor em reais R\$, ex.: 350',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white30),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _taxaController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Digite o valor do dólar US\$, ex.: 5.33',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white30),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFC107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: _converter,
                    child: const Text(
                      'Converter',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                if (_resultado.isNotEmpty)
                  Text(
                    _resultado,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
