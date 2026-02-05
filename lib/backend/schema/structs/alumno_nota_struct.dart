// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlumnoNotaStruct extends BaseStruct {
  AlumnoNotaStruct({
    double? nota,
    String? nombre,
  })  : _nota = nota,
        _nombre = nombre;

  // "nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  set nota(double? val) => _nota = val;

  void incrementNota(double amount) => nota = nota + amount;

  bool hasNota() => _nota != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static AlumnoNotaStruct fromMap(Map<String, dynamic> data) =>
      AlumnoNotaStruct(
        nota: castToType<double>(data['nota']),
        nombre: data['nombre'] as String?,
      );

  static AlumnoNotaStruct? maybeFromMap(dynamic data) => data is Map
      ? AlumnoNotaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nota': _nota,
        'nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nota': serializeParam(
          _nota,
          ParamType.double,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static AlumnoNotaStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlumnoNotaStruct(
        nota: deserializeParam(
          data['nota'],
          ParamType.double,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AlumnoNotaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlumnoNotaStruct &&
        nota == other.nota &&
        nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality().hash([nota, nombre]);
}

AlumnoNotaStruct createAlumnoNotaStruct({
  double? nota,
  String? nombre,
}) =>
    AlumnoNotaStruct(
      nota: nota,
      nombre: nombre,
    );
