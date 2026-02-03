import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'asignaturas_widget.dart' show AsignaturasWidget;
import 'package:flutter/material.dart';

class AsignaturasModel extends FlutterFlowModel<AsignaturasWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAlumnos = [];
  void addToListaAlumnos(dynamic item) => listaAlumnos.add(item);
  void removeFromListaAlumnos(dynamic item) => listaAlumnos.remove(item);
  void removeAtIndexFromListaAlumnos(int index) => listaAlumnos.removeAt(index);
  void insertAtIndexInListaAlumnos(int index, dynamic item) =>
      listaAlumnos.insert(index, item);
  void updateListaAlumnosAtIndex(int index, Function(dynamic) updateFn) =>
      listaAlumnos[index] = updateFn(listaAlumnos[index]);

  List<dynamic> listaAsignaturas = [];
  void addToListaAsignaturas(dynamic item) => listaAsignaturas.add(item);
  void removeFromListaAsignaturas(dynamic item) =>
      listaAsignaturas.remove(item);
  void removeAtIndexFromListaAsignaturas(int index) =>
      listaAsignaturas.removeAt(index);
  void insertAtIndexInListaAsignaturas(int index, dynamic item) =>
      listaAsignaturas.insert(index, item);
  void updateListaAsignaturasAtIndex(int index, Function(dynamic) updateFn) =>
      listaAsignaturas[index] = updateFn(listaAsignaturas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerAlumnos] action in Asignaturas widget.
  dynamic alumnos;
  // Stores action output result for [Custom Action - obtenerAsignaturas] action in Asignaturas widget.
  dynamic asignaturas;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
