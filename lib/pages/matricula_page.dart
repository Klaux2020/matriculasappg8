
import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/alumno_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatelessWidget {
   List<Widget> tileList =[];
   Matricula newMatricula = Matricula(
    alumno : Alumno(
    "Pedro", 
    "pedronoseasapo@gmail.com",
    "102445395" ),
    fecha: "20/02/2024",
    hora:  "9:10",
    carrera: Carrera(titulo: "Ingeniero de Sistemas", duracion: "5 años "),
    );
   List<Alumno> alumnoList = [
    Alumno("Juanito", "juan123@gmail.com", "15975389"),
    Alumno("Pedro", "pedro123@gmail.com", "44444454"),
    Alumno("Anass", "ana123@gmail.com", "40585245"),
  ];

   generateListTile(){
    alumnoList.forEach((element) {
      tileList.add(AlumnoCard(name: element.nombre, institution: "tecsup"));
    });
   }
 
  @override
  Widget build(BuildContext context) {
    generateListTile();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    return Scaffold(
      appBar: AppBar(
        title: Text("Matriculas") ,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
      ),
      body: Center(
        child: Column(
          children: [Text("Mis Alumnos"),...tileList],
          
              // [
              // generateListTile("Jhony Gallegos", "TECSUP 01"),
              // AlumnoCard(
              //  name: "Jhony", 
              //  institution: "PUCP"
              //  ),
              // ],
          ),
      ),
    );
  }
}

