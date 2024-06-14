
import 'package:flutter/material.dart';
import 'package:matriculasapp/models/carrera_model.dart';
import 'package:matriculasapp/models/matricula_model.dart';
import 'package:matriculasapp/widgets/item_card.dart';
import 'package:matriculasapp/models/alumno_model.dart';

class MatriculaPage extends StatefulWidget {
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
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

   // generateListTile(){
   //  alumnoList.forEach((element) {
   //   tileList.add(ItemCard(name: element.nombre, institution: "tecsup"));
   // });
   //}

   @override
   void initState() {
    // generateListTile(); 
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Alumno auxAlumno = Alumno("Pancrancia","notiene@hotmail.com","50450436");
          alumnoList.add(auxAlumno);
         //  tileList=[];
         // generateListTile();
          setState(() {});
        },
        child: Icon(Icons.add),
        ),
      appBar: AppBar(
        title: Text("Matriculas") ,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
      ),
      body: Center(
        child: Column(
          children: [
            Text("Mis Alumnos"),
           // ...tileList,
             ...alumnoList.map(
                (alumnoSeleccionado) => ItemCard(
                name: alumnoSeleccionado.nombre, 
                institution: "PUCP",
                funcionDelete: (){
                  // alumnoList.removeLast();
                  // alumnoList.removeAt(1);
                  // alumnoList.removeRange(0, 2);
                  alumnoList.remove(alumnoSeleccionado);
                  setState(() {});
                 },
                  funcionEdit: (){
                  print("Editando");
                  //alumnoSeleccionado.nombre = "Johan San Miguel";
                  print(alumnoList.indexOf(alumnoSeleccionado));
                  alumnoList[alumnoList.indexOf(alumnoSeleccionado)] = 
                  Alumno(
                  "Luis Antonio",
                  "lantonia@gmail.com",
                  "405520462"
                  );
                  print(alumnoSeleccionado.nombre);
                  setState(() {});
                 },

                 ),
                 )
                .toList()
            ],
      ),
      ),
    );
  }
}

