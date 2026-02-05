// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotasStruct extends BaseStruct {
  NotasStruct({
    List<AlumnoNotaStruct>? notas,
  }) : _notas = notas;

  // "notas" field.
  List<AlumnoNotaStruct>? _notas;
  List<AlumnoNotaStruct> get notas => _notas ?? const [];
  set notas(List<AlumnoNotaStruct>? val) => _notas = val;

  void updateNotas(Function(List<AlumnoNotaStruct>) updateFn) {
    updateFn(_notas ??= []);
  }

  bool hasNotas() => _notas != null;

  static NotasStruct fromMap(Map<String, dynamic> data) => NotasStruct(
        notas: getStructList(
          data['notas'],
          AlumnoNotaStruct.fromMap,
        ),
      );

  static NotasStruct? maybeFromMap(dynamic data) =>
      data is Map ? NotasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'notas': _notas?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'notas': serializeParam(
          _notas,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NotasStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotasStruct(
        notas: deserializeStructParam<AlumnoNotaStruct>(
          data['notas'],
          ParamType.DataStruct,
          true,
          structBuilder: AlumnoNotaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NotasStruct && listEquality.equals(notas, other.notas);
  }

  @override
  int get hashCode => const ListEquality().hash([notas]);
}

NotasStruct createNotasStruct() => NotasStruct();
