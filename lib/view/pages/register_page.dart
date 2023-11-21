import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/second_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  final TextStyle labelTextStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final EdgeInsets fieldPadding = EdgeInsets.symmetric(vertical: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar uma Nova Conta'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text('Nome', style: labelTextStyle),
            TextFormField(
              decoration: InputDecoration(),
            ),
            SizedBox(height: fieldPadding.top),
            Text('Email', style: labelTextStyle),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: fieldPadding.top),
            Text('Data de Nascimento', style: labelTextStyle),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: fieldPadding.top),
            Text('Definir uma Senha', style: labelTextStyle),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              obscureText: true,
            ),
            SizedBox(height: fieldPadding.top),
            Text('Confirmar Senha', style: labelTextStyle),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));                 },
              child: Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}
class second_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Etapa do Registro'),
      ),
      body: Center(
        child: Text('Página da Segunda Etapa do Registro'),
      ),
    );
  }
}
