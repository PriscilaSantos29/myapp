import 'package:flutter/material.dart';

// ---------------- LOGIN ----------------

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final user = _userController.text.trim();
    final pass = _passwordController.text.trim();

    if (_formKey.currentState!.validate()) {
      if (user == "admin" && pass == "1234") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => WelcomePage()),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Usuário ou senha incorretos!')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock_outline, color: Colors.blue, size: 70),
                    SizedBox(height: 16),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      controller: _userController,
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (v) =>
                              v == null || v.isEmpty
                                  ? 'Digite o usuário'
                                  : null,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(),
                      ),
                      validator:
                          (v) =>
                              v == null || v.isEmpty ? 'Digite a senha' : null,
                    ),
                    SizedBox(height: 24),
                    ElevatedButton.icon(
                      icon: Icon(Icons.login),
                      label: Text("Entrar"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _login,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------- WELCOME ----------------

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, color: Colors.white, size: 64),
                  SizedBox(height: 8),
                  Text(
                    'Olá, admin!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('Bem-vindo!'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.quiz_rounded, color: Colors.blueAccent, size: 80),
              SizedBox(height: 20),
              Text(
                'Pesquisa e Quiz',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Bem-vindo ao aplicativo de pesquisa e quiz!\n'
                'Escolha uma das opções abaixo para começar.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: Icon(Icons.assignment_outlined),
                  label: Text(
                    'Responder Pesquisa',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SurveyFormPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    side: BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blueAccent,
                  ),
                  label: Text(
                    'Ir direto para o Quiz',
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => QuizPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- PESQUISA ----------------

class SurveyFormPage extends StatefulWidget {
  @override
  _SurveyFormPageState createState() => _SurveyFormPageState();
}

class _SurveyFormPageState extends State<SurveyFormPage> {
  final _formKey = GlobalKey<FormState>();

  String? gender;
  final ageController = TextEditingController();
  String? education;
  double satisfaction = 3;
  bool recommend = false;
  bool notifications = false;

  Map<String, bool> habits = {
    'Pedir comida 1x por semana': false,
    'Pedir comida 2-3x por semana': false,
    'Cozinhar em casa': false,
  };

  @override
  void dispose() {
    ageController.dispose();
    super.dispose();
  }

  void _goToQuiz() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (_) => QuizPage(
                userGender: gender,
                userAge: int.tryParse(ageController.text),
              ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pesquisa de Satisfação')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. Qual é o seu gênero?", style: TextStyle(fontSize: 16)),
              RadioListTile<String>(
                title: Text("Masculino"),
                value: "Masculino",
                groupValue: gender,
                onChanged: (val) => setState(() => gender = val),
              ),
              RadioListTile<String>(
                title: Text("Feminino"),
                value: "Feminino",
                groupValue: gender,
                onChanged: (val) => setState(() => gender = val),
              ),
              RadioListTile<String>(
                title: Text("Outro / Prefiro não dizer"),
                value: "Outro",
                groupValue: gender,
                onChanged: (val) => setState(() => gender = val),
              ),
              SizedBox(height: 12),
              Text("2. Qual a sua idade?", style: TextStyle(fontSize: 16)),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Digite sua idade",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Idade é obrigatória';
                  final n = int.tryParse(value);
                  if (n == null || n <= 0) return 'Digite uma idade válida';
                  return null;
                },
              ),
              SizedBox(height: 12),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: '3. Escolaridade'),
                items:
                    [
                          'Ensino Fundamental',
                          'Ensino Médio',
                          'Ensino Superior',
                          'Pós-graduação',
                        ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                value: education,
                onChanged: (v) => setState(() => education = v),
                validator:
                    (v) =>
                        (v == null || v.isEmpty) ? 'Escolha uma opção' : null,
              ),
              SizedBox(height: 16),
              Text(
                "4. Qual a sua satisfação com o serviço? (${satisfaction.round()})",
                style: TextStyle(fontSize: 16),
              ),
              Slider(
                value: satisfaction,
                min: 1,
                max: 5,
                divisions: 4,
                label: satisfaction.round().toString(),
                onChanged: (val) => setState(() => satisfaction = val),
              ),
              SizedBox(height: 12),
              Text(
                "5. Hábitos (marque os que se aplicam)",
                style: TextStyle(fontSize: 16),
              ),
              ...habits.keys.map(
                (key) => CheckboxListTile(
                  title: Text(key),
                  value: habits[key],
                  onChanged: (val) => setState(() => habits[key] = val!),
                ),
              ),
              SizedBox(height: 12),
              SwitchListTile(
                title: Text("6. Você recomendaria o app?"),
                value: recommend,
                onChanged: (val) => setState(() => recommend = val),
              ),
              SwitchListTile(
                title: Text("7. Deseja receber notificações?"),
                value: notifications,
                onChanged: (val) => setState(() => notifications = val),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  child: Text('Próximo (Quiz)'),
                  onPressed: _goToQuiz,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- QUIZ ----------------

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  int? selectedIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    this.selectedIndex,
  });
}

class QuizPage extends StatefulWidget {
  final String? userGender;
  final int? userAge;

  QuizPage({this.userGender, this.userAge});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<QuizQuestion> questions = [];

  @override
  void initState() {
    super.initState();

    questions = [
      QuizQuestion(
        question: '1. Qual o tempo médio de entrega padrão?',
        options: ['30 minutos', '45 minutos', '1 hora'],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '2. Qual é o método de pagamento instantâneo brasileiro?',
        options: ['Pix', 'Boleto', 'Cheque'],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '3. Para que serve o programa "FoodLovers"?',
        options: [
          'Recompensar clientes',
          'Aumentar preços',
          'Fechar restaurantes',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '4. Qual é a taxa mínima de entrega?',
        options: ['R\$ 1,00', 'R\$ 2,50', 'R\$ 5,00'],
        correctIndex: 1,
      ),
      QuizQuestion(
        question: '5. Qual item é considerado bebida?',
        options: ['Refrigerante', 'Sanduíche', 'Batata frita'],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '6. Qual horário costuma ter maior movimento?',
        options: ['Madrugada', 'Hora do almoço', 'Fim da manhã'],
        correctIndex: 1,
      ),
      QuizQuestion(
        question: '7. Qual tipo de restaurante entrega mais rápido?',
        options: ['Fast-food', 'Churrascaria', 'Restaurante japonês'],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '8. Qual desses é um método de entrega?',
        options: ['Retirada', 'Estacionamento', 'Mesa VIP'],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '9. O que significa “frete grátis”?',
        options: [
          'Taxa de entrega não é cobrada',
          'Pedido é mais rápido',
          'Comida é de graça',
        ],
        correctIndex: 0,
      ),
      QuizQuestion(
        question: '10. Qual item é considerado sobremesa?',
        options: ['Sorvete', 'Arroz', 'Feijão'],
        correctIndex: 0,
      ),
    ];
  }

  void _submitQuiz() {
    // Verifica se todas foram respondidas
    final unanswered = questions.indexWhere((q) => q.selectedIndex == null);
    if (unanswered != -1) {
      showDialog(
        context: context,
        builder:
            (_) => AlertDialog(
              title: Text('Por favor'),
              content: Text('Responda todas as perguntas antes de enviar.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
      );
      return;
    }

    int score =
        questions.where((q) => q.selectedIndex == q.correctIndex).length;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder:
            (_) => QuizResultPage(
              score: score,
              total: questions.length,
              questions: questions,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Responda as perguntas abaixo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            ...questions.asMap().entries.map((entry) {
              final q = entry.value;
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        q.question,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ...q.options.asMap().entries.map((opt) {
                        final optIdx = opt.key;
                        final optText = opt.value;
                        return RadioListTile<int>(
                          title: Text(optText),
                          value: optIdx,
                          groupValue: q.selectedIndex,
                          onChanged:
                              (val) => setState(() => q.selectedIndex = val),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              );
            }),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _submitQuiz, child: Text('Enviar Quiz')),
          ],
        ),
      ),
    );
  }
}

// ---------------- RESULTADO ----------------

class QuizResultPage extends StatelessWidget {
  final int score;
  final int total;
  final List<QuizQuestion> questions;

  QuizResultPage({
    required this.score,
    required this.total,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Você acertou $score de $total perguntas!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (_, i) {
                  final q = questions[i];
                  final correct = q.options[q.correctIndex];
                  final selected =
                      q.selectedIndex != null
                          ? q.options[q.selectedIndex!]
                          : '—';
                  final correctBool = q.selectedIndex == q.correctIndex;
                  return ListTile(
                    title: Text(q.question),
                    subtitle: Text(
                      'Sua resposta: $selected\nCorreta: $correct',
                    ),
                    isThreeLine: true,
                    trailing: Icon(
                      correctBool ? Icons.check_circle : Icons.cancel,
                      color: correctBool ? Colors.green : Colors.red,
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => Navigator.popUntil(context, (route) => route.isFirst),
              child: Text('Voltar ao início'),
            ),
          ],
        ),
      ),
    );
  }
}
