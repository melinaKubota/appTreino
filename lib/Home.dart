import 'package:app_treino/home/Agenda.dart';
import 'package:app_treino/home/Alunas.dart';
import 'package:app_treino/home/Perfil.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<Widget> home = [ //"paginas" do app
      Agenda(),
      Alunas(),
      Perfil()
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Corrida Para Mulheres"),
        actions: [
          IconButton(
            onPressed: (){

            }, 
            icon: Icon(Icons.account_circle)
            ),
        ],
      ),
      /* appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        backgroundColor: Colors.white,
         title: Image.asset(
          "images/logo.png",
          width: 98,
          height: 22,
        ),
        /* actions: [
          IconButton(
              onPressed: () {
                print("acao: videocam");
              },
              icon: Icon(Icons.videocam)),
          IconButton(
              onPressed: () {
                print("acao: pesquisa");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("acao: conta");
              },
              icon: Icon(Icons.account_circle)), 
        ], */
      ), */
      body: Container (
        padding: EdgeInsets.all(16),
        //child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
       // currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
           // _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed, //fixed define uma cor de fundo fixa(para até 3 botoes), shifting - troca a cor dos icones
        /* fixedColor: Colors.red, */
        items: [
          BottomNavigationBarItem(// a barra que fica em baixo
              //backgroundColor: Colors.orange, (CASO QUEIRA QUE FIQUE NESSA CORES QUANDO SELECIONA, COLOCAR SHIFTING NO TYPE BOTTOM NAVIGATOR)
              label: ("Home"),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              //backgroundColor: Colors.red,
              label: ("Alunas"),
              icon: Icon(Icons.people)),
          BottomNavigationBarItem(
              //backgroundColor: Colors.blue,
              label: ("Agenda"),
              icon: Icon(Icons.calendar_today)),
          /* BottomNavigationBarItem(
              //backgroundColor: Colors.green,
              label: ("Perfil"),
              icon: Icon(Icons.person)), */
        ],
      ),
    );
      

  }
}