import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profesores_widget.dart' show ProfesoresWidget;
import 'package:flutter/material.dart';

class ProfesoresModel extends FlutterFlowModel<ProfesoresWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaProfesores = [];
  void addToListaProfesores(dynamic item) => listaProfesores.add(item);
  void removeFromListaProfesores(dynamic item) => listaProfesores.remove(item);
  void removeAtIndexFromListaProfesores(int index) =>
      listaProfesores.removeAt(index);
  void insertAtIndexInListaProfesores(int index, dynamic item) =>
      listaProfesores.insert(index, item);
  void updateListaProfesoresAtIndex(int index, Function(dynamic) updateFn) =>
      listaProfesores[index] = updateFn(listaProfesores[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerProfesores] action in Profesores widget.
  dynamic profesores;
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
