import '/backend/supabase/supabase.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'estadisticas_model.dart';
export 'estadisticas_model.dart';

class EstadisticasWidget extends StatefulWidget {
  const EstadisticasWidget({super.key});

  static String routeName = 'Estadisticas';
  static String routePath = '/estadisticas';

  @override
  State<EstadisticasWidget> createState() => _EstadisticasWidgetState();
}

class _EstadisticasWidgetState extends State<EstadisticasWidget> {
  late EstadisticasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstadisticasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.asignaturas = await actions.obtenerAsignaturas();
      _model.listaAsignaturas = _model.asignaturas!.toList().cast<dynamic>();
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Asignaturas',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWidget(),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowDropDown<int>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<int>(
                                _model.dropDownValue ??= -1,
                              ),
                              options: List<int>.from((_model.listaAsignaturas
                                      .map((e) => getJsonField(
                                            e,
                                            r'''$.id''',
                                          ))
                                      .toList())
                                  .cast<int>()),
                              optionLabels: _model.listaAsignaturas
                                  .map((e) => getJsonField(
                                        e,
                                        r'''$.nombre''',
                                      ))
                                  .toList()
                                  .map((e) => e.toString())
                                  .toList(),
                              onChanged: (val) async {
                                safeSetState(() => _model.dropDownValue = val);
                                _model.notas = await actions.obtenerAlumnosNota(
                                  _model.dropDownValue!,
                                );
                                _model.listaAlumnosNota =
                                    _model.notas!.toList().cast<dynamic>();
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                              width: 200.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              _model.mostrarPDF = false;
                              safeSetState(() {});
                            },
                            text: 'Gráfica',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              _model.pdf = await actions.generarPdf(
                                _model.listaAlumnosNota.toList(),
                              );
                              {
                                safeSetState(() => _model
                                    .isDataUploading_uploadDataKcm = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];
                                var selectedFiles = <SelectedFile>[];
                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles =
                                      _model.pdf!.bytes!.isNotEmpty
                                          ? [_model.pdf!]
                                          : <FFUploadedFile>[];
                                  selectedFiles =
                                      selectedFilesFromUploadedFiles(
                                    selectedUploadedFiles,
                                    storageFolderPath: 'pdfs/informes',
                                  );
                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'pdfs',
                                    selectedFiles: selectedFiles,
                                  );
                                } finally {
                                  _model.isDataUploading_uploadDataKcm = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedFiles.length &&
                                    downloadUrls.length ==
                                        selectedFiles.length) {
                                  safeSetState(() {
                                    _model.uploadedLocalFile_uploadDataKcm =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl_uploadDataKcm =
                                        downloadUrls.first;
                                  });
                                } else {
                                  safeSetState(() {});
                                  return;
                                }
                              }

                              _model.mostrarPDF = true;
                              safeSetState(() {});

                              safeSetState(() {});
                            },
                            text: 'PDF',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            if (!_model.mostrarPDF) {
                              return Container(
                                width: double.infinity,
                                height: 230.0,
                                child: FlutterFlowBarChart(
                                  barData: [
                                    FFBarChartData(
                                      yData: _model.listaAlumnosNota
                                          .map((e) => getJsonField(
                                                e,
                                                r'''$.nota''',
                                              ))
                                          .toList(),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    )
                                  ],
                                  xLabels: _model.listaAlumnosNota
                                      .map((e) => getJsonField(
                                            e,
                                            r'''$.usuarios.nombre''',
                                          ))
                                      .toList()
                                      .map((e) => e.toString())
                                      .toList(),
                                  barWidth: 16.0,
                                  barBorderRadius: BorderRadius.circular(8.0),
                                  groupSpace: 8.0,
                                  alignment: BarChartAlignment.spaceAround,
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    showBorder: false,
                                  ),
                                  axisBounds: AxisBounds(),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Nombre',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: TextStyle(),
                                    labelInterval: 10.0,
                                    reservedSize: 28.0,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Nota',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: TextStyle(),
                                    labelInterval: 10.0,
                                    reservedSize: 42.0,
                                  ),
                                ),
                              );
                            } else {
                              return FlutterFlowPdfViewer(
                                fileBytes: _model.pdf?.bytes,
                                height: 300.0,
                                horizontalScroll: false,
                              );
                            }
                          },
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
