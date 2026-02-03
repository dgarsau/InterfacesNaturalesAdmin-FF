import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'asignatura_target_model.dart';
export 'asignatura_target_model.dart';

class AsignaturaTargetWidget extends StatefulWidget {
  const AsignaturaTargetWidget({
    super.key,
    required this.asignatura,
  });

  final dynamic asignatura;

  @override
  State<AsignaturaTargetWidget> createState() => _AsignaturaTargetWidgetState();
}

class _AsignaturaTargetWidgetState extends State<AsignaturaTargetWidget> {
  late AsignaturaTargetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsignaturaTargetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget<int>(
      onAcceptWithDetails: (details) async {
        _model.respuesta = await actions.asociarAsignatura(
          details.data,
          getJsonField(
            widget.asignatura,
            r'''$.id''',
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _model.respuesta!,
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );

        safeSetState(() {});
      },
      onWillAcceptWithDetails: (details) {
        (() async {
          _model.color = Color(0xFFB8B0FF);
          safeSetState(() {});

          safeSetState(() {});
        })();
        return true;
      },
      onLeave: (data) async {
        _model.color = FlutterFlowTheme.of(context).primaryBackground;
        safeSetState(() {});

        safeSetState(() {});
      },
      builder: (context, _, __) {
        return Container(
          width: 300.0,
          height: 80.0,
          decoration: BoxDecoration(
            color: _model.color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              getJsonField(
                widget.asignatura,
                r'''$.nombre''',
              ).toString(),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
            ),
          ),
        );
      },
    );
  }
}
