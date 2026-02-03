import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alumnos_widget.dart' show AlumnosWidget;
import 'package:flutter/material.dart';

class AlumnosModel extends FlutterFlowModel<AlumnosWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAlumnos = [];
  void addToListaAlumnos(dynamic item) => listaAlumnos.add(item);
  void removeFromListaAlumnos(dynamic item) => listaAlumnos.remove(item);
  void removeAtIndexFromListaAlumnos(int index) => listaAlumnos.removeAt(index);
  void insertAtIndexInListaAlumnos(int index, dynamic item) =>
      listaAlumnos.insert(index, item);
  void updateListaAlumnosAtIndex(int index, Function(dynamic) updateFn) =>
      listaAlumnos[index] = updateFn(listaAlumnos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerAlumnos] action in Alumnos widget.
  dynamic alumnos;
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
