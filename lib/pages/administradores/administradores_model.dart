import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'administradores_widget.dart' show AdministradoresWidget;
import 'package:flutter/material.dart';

class AdministradoresModel extends FlutterFlowModel<AdministradoresWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAdministradores = [];
  void addToListaAdministradores(dynamic item) =>
      listaAdministradores.add(item);
  void removeFromListaAdministradores(dynamic item) =>
      listaAdministradores.remove(item);
  void removeAtIndexFromListaAdministradores(int index) =>
      listaAdministradores.removeAt(index);
  void insertAtIndexInListaAdministradores(int index, dynamic item) =>
      listaAdministradores.insert(index, item);
  void updateListaAdministradoresAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaAdministradores[index] = updateFn(listaAdministradores[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerAdministradores] action in Administradores widget.
  dynamic administradores;
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
