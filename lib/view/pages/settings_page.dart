import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true; // Para controlar se as notificações estão ativadas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Dados Pessoais'),
            onTap: () {
              // Navegar para a tela de dados pessoais
            },
          ),
          ListTile(
            title: Text('Alterar Senha'),
            onTap: () {
              // Navegar para a tela de alteração de senha
            },
          ),
          ListTile(
            title: Text('Cartão de Crédito'),
            onTap: () {
              // Navegar para a tela de cartão de crédito
            },
          ),
          ListTile(
            title: Text('Alterar Endereço'),
            onTap: () {
              // Navegar para a tela de alteração de endereço
            },
          ),
          ListTile(
            title: Text('Deletar Conta'),
            onTap: () {
              // Navegar para a tela de exclusão de conta
            },
          ),
          SwitchListTile(
            title: Text('Permitir Notificações'),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
