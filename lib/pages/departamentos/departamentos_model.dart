import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'departamentos_widget.dart' show DepartamentosWidget;
import 'package:flutter/material.dart';

class DepartamentosModel extends FlutterFlowModel<DepartamentosWidget> {
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

  List<dynamic> listaDepartamentos = [];
  void addToListaDepartamentos(dynamic item) => listaDepartamentos.add(item);
  void removeFromListaDepartamentos(dynamic item) =>
      listaDepartamentos.remove(item);
  void removeAtIndexFromListaDepartamentos(int index) =>
      listaDepartamentos.removeAt(index);
  void insertAtIndexInListaDepartamentos(int index, dynamic item) =>
      listaDepartamentos.insert(index, item);
  void updateListaDepartamentosAtIndex(int index, Function(dynamic) updateFn) =>
      listaDepartamentos[index] = updateFn(listaDepartamentos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerProfesores] action in Departamentos widget.
  dynamic profesores;
  // Stores action output result for [Custom Action - obtenerDepartamentos] action in Departamentos widget.
  dynamic departamentos;
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
