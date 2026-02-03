import '../database.dart';

class CarrerasTable extends SupabaseTable<CarrerasRow> {
  @override
  String get tableName => 'carreras';

  @override
  CarrerasRow createRow(Map<String, dynamic> data) => CarrerasRow(data);
}

class CarrerasRow extends SupabaseDataRow {
  CarrerasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarrerasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int get duracion => getField<int>('duracion')!;
  set duracion(int value) => setField<int>('duracion', value);
}
