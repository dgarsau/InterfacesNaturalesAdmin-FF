import '../database.dart';

class ProfesorAsignaturaTable extends SupabaseTable<ProfesorAsignaturaRow> {
  @override
  String get tableName => 'profesor_asignatura';

  @override
  ProfesorAsignaturaRow createRow(Map<String, dynamic> data) =>
      ProfesorAsignaturaRow(data);
}

class ProfesorAsignaturaRow extends SupabaseDataRow {
  ProfesorAsignaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfesorAsignaturaTable();

  int get profesorId => getField<int>('profesor_id')!;
  set profesorId(int value) => setField<int>('profesor_id', value);

  int get asignaturaId => getField<int>('asignatura_id')!;
  set asignaturaId(int value) => setField<int>('asignatura_id', value);
}
