import '../database.dart';

class AsignaturasTable extends SupabaseTable<AsignaturasRow> {
  @override
  String get tableName => 'asignaturas';

  @override
  AsignaturasRow createRow(Map<String, dynamic> data) => AsignaturasRow(data);
}

class AsignaturasRow extends SupabaseDataRow {
  AsignaturasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AsignaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get carreraId => getField<int>('carrera_id')!;
  set carreraId(int value) => setField<int>('carrera_id', value);

  int get ano => getField<int>('ano')!;
  set ano(int value) => setField<int>('ano', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
