import 'package:flutter/material.dart';
import 'package:projeto_final/pages/loginClass.dart';

class Adm extends StatefulWidget {
  const Adm({super.key});

  @override
  State<Adm> createState() => _AdmState();
}

String resultado = '';

class _AdmState extends State<Adm> {
  LoginClass Login = new LoginClass();
  CreateAccount CreateAcc = new CreateAccount();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.login),
                text: "Login",
              ),
              Tab(
                icon: Icon(Icons.create),
                text: "Create",
              ),
            ],
          ),
          title: const Text('Adm'),
        ),
        body: TabBarView(children: [
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: Login.loginController,
                    decoration: const InputDecoration(
                      labelText: 'Login',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: Login.senhaController,
                    decoration: const InputDecoration(labelText: 'Senha'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      //print('TESTE');
                      resultado = Login.returnAcc();
                    });
                  },
                  child: Text('Entrar'),
                ),
                Container(
                  height: 100,
                  width: 400,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Text(
                    resultado,
                    style: TextStyle(fontSize: 20),
                  ),
                )
                //Text(),
              ],
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: CreateAcc.emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: CreateAcc.newLoginController,
                    decoration: const InputDecoration(
                      labelText: 'Create Login',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: CreateAcc.newSenhaController,
                    decoration:
                        const InputDecoration(labelText: 'Create Senha'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      //print(imc.IMCF(imc.calculateIMC()));
                      //resultado = imc.IMCF(imc.calculateIMC());
                      resultado = CreateAcc.returnAcc();
                    });
                  },
                  child: Text('Criar'),
                ),
                Container(
                  height: 100,
                  width: 400,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Text(
                    resultado,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
