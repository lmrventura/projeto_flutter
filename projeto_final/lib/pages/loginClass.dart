import 'package:flutter/material.dart';

//List<LoginClass> contas = [];

class LoginClass {
  late String login;
  late String senha;
  late String conta;
  late String email;

  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String returnAcc() {
    login = loginController.text;
    senha = senhaController.text;
    return conta = '$login $senha';
  }

  String returnName() {
    login = loginController.text;
    return login;
  }

  String returnEmail() {
    email = emailController.text;
    return email;
  }
}

class CreateAccount {
  late String newLogin;
  late String newSenha;
  late String newAccount;

  TextEditingController newLoginController = TextEditingController();
  TextEditingController newSenhaController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String returnAcc() {
    newLogin = newLoginController.text;
    newSenha = newSenhaController.text;
    return newAccount = '$newLogin $newSenha';
  }
}
