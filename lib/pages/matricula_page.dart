
import 'package:flutter/material.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/alumno_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatelessWidget {
   Matricula newMatricula = Matricula(
    alumno : Alumno(
    "Pedro", 
    "pedronoseasapo@gmail.com",
    "102445395" ),
    fecha: "20/02/2024",
    hora:  "9:10",
    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matriculas") ,
      ),
      body: Column(
        children: [
          generateListTile("Jhony Gallegos", "TECSUP 01"),
          AlumnoCard(
            name: "Jhony", 
            institution: "PUCP"
            ),
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

