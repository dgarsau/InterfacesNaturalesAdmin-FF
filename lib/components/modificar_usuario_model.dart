import '/flutter_flow/flutter_flow_util.dart';
import 'modificar_usuario_widget.dart' show ModificarUsuarioWidget;
import 'package:flutter/material.dart';

class ModificarUsuarioModel extends FlutterFlowModel<ModificarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioTextController;
  String? Function(BuildContext, String?)? usuarioTextControllerValidator;
  // State field(s) for Contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadTextController;
  String? Function(BuildContext, String?)? edadTextControllerValidator;
  // Stores action output result for [Custom Action - modificarUsuario] action in Button widget.
  String? respuesta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usuarioFocusNode?.dispose();
    usuarioTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    edadFocusNode?.dispose();
    edadTextController?.dispose();
  }
}
