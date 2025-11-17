import 'package:flutter/material.dart';

class CalculadoraPizzaPage extends StatefulWidget {
  @override
  _CalculadoraPizzaPageState createState() => _CalculadoraPizzaPageState();
}

class _CalculadoraPizzaPageState extends State<CalculadoraPizzaPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController precoController = TextEditingController();

  bool refrigerante = false;
  bool bordaRecheada = false;

  double precoFinal = 0.0;

  void calcularPreco() {
    if (_formKey.currentState!.validate()) {
      double precoPizza = double.parse(precoController.text);
      double total = precoPizza;

      if (refrigerante) total += 7.0;
      if (bordaRecheada) total += 10.0;

      setState(() {
        precoFinal = total;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculando o Preço"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 10),
              Center(
                child: Icon(
                  Icons.calculate,
                  size: 120,
                  color: Colors.blue.shade600,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Digite o Preço da Pizza",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),

              TextFormField(
                controller: precoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Digite aqui...",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite o preço da pizza";
                  }
                  if (double.tryParse(value) == null) {
                    return "Digite um valor numérico válido";
                  }
                  if (double.parse(value) <= 0) {
                    return "O preço deve ser maior que zero";
                  }
                  return null;
                },
              ),

              SizedBox(height: 25),

              Text(
                "Preço Final do Pedido",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),
              Text(
                precoFinal.toStringAsFixed(2),
                style: TextStyle(fontSize: 18),
              ),
              Divider(height: 30),

              Text(
                "Adicionar Itens Extras ao Pedido",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700,
                ),
              ),

              SizedBox(height: 15),

              CheckboxListTile(
                value: refrigerante,
                onChanged: (value) {
                  setState(() => refrigerante = value!);
                },
                title: Text("Refrigerante - R\$ 7,00"),
                controlAffinity: ListTileControlAffinity.leading,
              ),

              CheckboxListTile(
                value: bordaRecheada,
                onChanged: (value) {
                  setState(() => bordaRecheada = value!);
                },
                title: Text("Borda Recheada - R\$ 10,00"),
                controlAffinity: ListTileControlAffinity.leading,
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: calcularPreco,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Calcular Preço",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
