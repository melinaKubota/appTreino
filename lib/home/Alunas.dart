import 'package:app_treino/model/Aluna.dart';
import 'package:flutter/material.dart';

class Alunas extends StatefulWidget {
  @override
  _AlunasState createState() => _AlunasState();
}

class _AlunasState extends State<Alunas> {
  List<Aluna> listaAlunas = [
    Aluna("_foto", "_nome", "_treino",
        "_historico"), // colocar os dados entre os parentes nesta ordem
    Aluna("ola", "meu", "nome", "e")
  ]; //lista da classe
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // lista para exibir a lista das alunas
        itemCount: listaAlunas.length,
        itemBuilder: (context, indice) {
          Aluna aluna = listaAlunas[indice];
          return ListTile(//cria cada um dos itens da lista
              contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              leading: CircleAvatar(
                //fotinha da aluna
                maxRadius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(aluna.foto),
              ),
              title: Text(
                aluna.nome,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                aluna.treino,
              ),
              trailing: Icon(
                Icons.analytics
              )
              );
        });
  }
}
