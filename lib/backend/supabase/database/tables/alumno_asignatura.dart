import '../database.dart';

class AlumnoAsignaturaTable extends SupabaseTable<AlumnoAsignaturaRow> {
  @override
  String get tableName => 'alumno_asignatura';

  @override
  AlumnoAsignaturaRow createRow(Map<String, dynamic> data) =>
      AlumnoAsignaturaRow(data);
}

class AlumnoAsignaturaRow extends SupabaseDataRow {
  AlumnoAsignaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlumnoAsignaturaTable();

  int get alumnoId => getField<int>('alumno_id')!;
  set alumnoId(int value) => setField<int>('alumno_id', value);

  int get asignaturaId => getField<int>('asignatura_id')!;
  set asignaturaId(int value) => setField<int>('asignatura_id', value);

  double? get nota => getField<double>('nota');
  set nota(double? value) => setField<double>('nota', value);
}
