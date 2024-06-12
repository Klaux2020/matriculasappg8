//Instanciando como Clase (Impacta en el Proceso pues es muy Ligera)
import 'package:flutter/material.dart';

class AlumnoCard extends StatelessWidget {
 String name="";
 String institution="";

  AlumnoCard({
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