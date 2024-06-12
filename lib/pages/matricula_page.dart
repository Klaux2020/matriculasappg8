
import 'package:flutter/material.dart';

class MatriculaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matriculas") ,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Jhonny Gallegos"),
            subtitle: Text("Tecsup"),
            trailing: 
              GestureDetector(
              child: Icon(Icons.delete),
              onTap: () {
              print("Hola");
            },
            ),


              // Otra Forma de Declarar el Boton(**)
              // IconButton(
              // icon: Icon(Icons.delete),
              // onPressed: () {
              //    print("Holas");
              // },
              // )
            // Usar de Forma Tradicional (*)
            // onTap: (){
            //  print("Holas");
            // },
          )  
        ],
        ),
    );
  }
}