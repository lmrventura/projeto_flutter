import 'package:flutter/material.dart';
import 'package:projeto_final/pages/loginClass.dart';

class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State<Contato> createState() => _ContatoState();
}

String resultado = '';

class _ContatoState extends State<Contato> {
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
                text: "Entre em Contato Conosco",
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
                    controller: Login.loginController, //imc.weightController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: Login.senhaController,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 100,
                  width: 400,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: TextFormField(
                    maxLines: 10,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      //print('TESTE HOMEM');
                      //resultado = imc.IMCM(imc.calculateIMC());
                      resultado = Login.returnAcc();
                    });
                  },
                  child: Text(
                    'Entrar',
                  ),
                ),
                //ElevatedButton(
                //onPressed: () {},
                //child: Text("Enviar"),)
                //Text(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
