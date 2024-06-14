import 'package:flutter/services.dart';
import 'package:matriculasapp/models/matricula_model.dart';

class InstitucionModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<MatriculaModel> matricula;
  InstitucionModel({
    required this.direccion,
    required this.matricula,
    required this.nombre,
    required this.ruc,
    required this.telefono,
  }); 
}