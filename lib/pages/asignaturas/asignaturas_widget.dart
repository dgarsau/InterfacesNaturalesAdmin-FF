import '/components/asignatura_target_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/usuario_dragueable_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'asignaturas_model.dart';
export 'asignaturas_model.dart';

class AsignaturasWidget extends StatefulWidget {
  const AsignaturasWidget({super.key});

  static String routeName = 'Asignaturas';
  static String routePath = '/asignaturas';

  @override
  State<AsignaturasWidget> createState() => _AsignaturasWidgetState();
}

class _AsignaturasWidgetState extends State<AsignaturasWidget> {
  late AsignaturasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsignaturasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.alumnos = await actions.obtenerAlumnos();
      _model.listaAlumnos = _model.alumnos!.toList().cast<dynamic>();
      safeSetState(() {});
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
            'Page Title',
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final alumnosView = _model.listaAlumnos.toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: alumnosView.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, alumnosViewIndex) {
                                final alumnosViewItem =
                                    alumnosView[alumnosViewIndex];
                                return UsuarioDragueableWidget(
                                  key: Key(
                                      'Keycau_${alumnosViewIndex}_of_${alumnosView.length}'),
                                  usuario: alumnosViewItem,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final asignaturasView =
                                _model.listaAsignaturas.toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: asignaturasView.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, asignaturasViewIndex) {
                                final asignaturasViewItem =
                                    asignaturasView[asignaturasViewIndex];
                                return AsignaturaTargetWidget(
                                  key: Key(
                                      'Keysti_${asignaturasViewIndex}_of_${asignaturasView.length}'),
                                  asignatura: asignaturasViewItem,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
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
