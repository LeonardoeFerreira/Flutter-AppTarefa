import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   //Criando um lista
  List _listaTarefas = ["Ir ao mercado ","Estudar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.purple,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          backgroundColor: Colors.purple ,
          onPressed: (){

        }),



      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: _listaTarefas.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(_listaTarefas[index]),
                    );
                  }
              ),
          ),
        ],
      ),
    );
  }
}
