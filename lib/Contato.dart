import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff00296b)),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo2.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                Padding(
                    // Caixa de texto e-mail
                    padding: EdgeInsets.only(top: 40, bottom: 30),
                    child: TextField(
                      autofocus:
                          true, // cursor marcando o email automaticamente
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              32, 16, 32, 16), // tamanho da caixa
                          hintText: "E-mail", // texto que aparecec na caixa
                          filled: true, // cor de fundo, verdadeiro
                          fillColor: Colors.white, // cor de fundo branco
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(0) //borda externa
                              )),
                    )),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                          32, 16, 32, 16), // tamanho da caixa
                      hintText: "Senha", // texto que aparecec na caixa
                      filled: true, // cor de fundo, verdadeiro
                      fillColor: Colors.white, // cor de fundo branco
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0) //borda externa
                          )),
                ),
                Padding(
                    // Botão "Correr"
                    padding: EdgeInsets.only(top: 50, bottom: 15),
                    child: RaisedButton(
                      child: Text("Correr",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      color: Color(0xffe82139),
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      shape: RoundedRectangleBorder(
                          // colocar borda no botão
                          borderRadius: BorderRadius.circular(32)),
                      onPressed: () {},
                    )),
                Center(
                  child: GestureDetector(
                      child: Text(
                        "Não tem conta? Clique aqui e entre em contato com a gente",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        // pagina que ira levar quando clicar em nao tem conta
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Contato() //conecta com o Contato.dart
                                ));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
