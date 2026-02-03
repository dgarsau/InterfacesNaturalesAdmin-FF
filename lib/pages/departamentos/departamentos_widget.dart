import '/components/departamento_target_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/usuario_dragueable_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'departamentos_model.dart';
export 'departamentos_model.dart';

class DepartamentosWidget extends StatefulWidget {
  const DepartamentosWidget({super.key});

  static String routeName = 'Departamentos';
  static String routePath = '/departamentos';

  @override
  State<DepartamentosWidget> createState() => _DepartamentosWidgetState();
}

class _DepartamentosWidgetState extends State<DepartamentosWidget> {
  late DepartamentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DepartamentosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.profesores = await actions.obtenerProfesores();
      _model.listaProfesores = _model.profesores!.toList().cast<dynamic>();
      safeSetState(() {});
      _model.departamentos = await actions.obtenerDepartamentos();
      _model.listaDepartamentos =
          _model.departamentos!.toList().cast<dynamic>();
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
            'Departamentos',
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
                            final profesoresView =
                                _model.listaProfesores.toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: profesoresView.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, profesoresViewIndex) {
                                final profesoresViewItem =
                                    profesoresView[profesoresViewIndex];
                                return UsuarioDragueableWidget(
                                  key: Key(
                                      'Keym8s_${profesoresViewIndex}_of_${profesoresView.length}'),
                                  usuario: profesoresViewItem,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final departamentosView =
                                _model.listaDepartamentos.toList();

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: departamentosView.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, departamentosViewIndex) {
                                final departamentosViewItem =
                                    departamentosView[departamentosViewIndex];
                                return DepartamentoTargetWidget(
                                  key: Key(
                                      'Keywj3_${departamentosViewIndex}_of_${departamentosView.length}'),
                                  departamento: departamentosViewItem,
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
