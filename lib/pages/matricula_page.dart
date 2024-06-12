
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
          generateListTile("Jhony Gallegos", "TECSUP 01"),
          GenerateListTile2(name: "Jhony", institution: "PUCP"),
        ],
        ),
    );
  }
}



//Instanciando como Funcion (Impacta en el Proceso pues es muy pesada)
Widget generateListTile(String name,String institution) {
  return ListTile(
            leading: Icon(Icons.person),
            title: Text(name),
            subtitle: Text(institution),
            trailing:  IconButton(
               icon: Icon(Icons.delete),
               onPressed: () {
                 print("Holas");
               },
               )
            
          ); 
}

//Instanciando como Clase (Impacta en el Proceso pues es muy Ligera)
class GenerateListTile2 extends StatelessWidget {
 String name="";
 String institution="";

  GenerateListTile2({
    required this.name , 
    required this.institution});
  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(Icons.person),
            title: Text(name),
            subtitle: Text(institution),
            trailing:  IconButton(
               icon: Icon(Icons.delete),
               onPressed: () {
                 print("Holas");
               },
               )
          ); 
  }
}