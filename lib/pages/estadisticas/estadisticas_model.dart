import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'estadisticas_widget.dart' show EstadisticasWidget;
import 'package:flutter/material.dart';

class EstadisticasModel extends FlutterFlowModel<EstadisticasWidget> {
  ///  Local state fields for this page.

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

  List<dynamic> listaAlumnosNota = [];
  void addToListaAlumnosNota(dynamic item) => listaAlumnosNota.add(item);
  void removeFromListaAlumnosNota(dynamic item) =>
      listaAlumnosNota.remove(item);
  void removeAtIndexFromListaAlumnosNota(int index) =>
      listaAlumnosNota.removeAt(index);
  void insertAtIndexInListaAlumnosNota(int index, dynamic item) =>
      listaAlumnosNota.insert(index, item);
  void updateListaAlumnosNotaAtIndex(int index, Function(dynamic) updateFn) =>
      listaAlumnosNota[index] = updateFn(listaAlumnosNota[index]);

  bool mostrarPDF = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerAsignaturas] action in Estadisticas widget.
  dynamic asignaturas;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Custom Action - obtenerAlumnosNota] action in DropDown widget.
  dynamic notas;
  // Stores action output result for [Custom Action - generarPdf] action in Button widget.
  FFUploadedFile? pdf;
  bool isDataUploading_uploadDataKcm = false;
  FFUploadedFile uploadedLocalFile_uploadDataKcm =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataKcm = '';

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
