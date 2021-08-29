import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar( //imagem
                  radius: 100,
                  backgroundColor: Colors.grey,
                  backgroundImage:NetworkImage("images/logo2.png"),//colocar a imagem pelo firabese posteriormente
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                    child: Text ("Câmera")
                    ),
                    TextButton(
                      onPressed: (){}, 
                    child: Text ("Galeria")
                    ),  
                  ],
                  ),
              ],
            ),),
        ),

      ),
      
    );
  }
}

//nome 
//sobrenome 
//email
//data de nascimento
//whatsapp

