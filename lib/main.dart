import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(), 
    theme: ThemeData(  // colocar cor da borda da caixa de texto
      primaryColor: Color(0xff00296b), // cor definida para a borda
      accentColor: Color (0xff) // ???
       ),
    debugShowCheckedModeBanner: false,
  ));
}

