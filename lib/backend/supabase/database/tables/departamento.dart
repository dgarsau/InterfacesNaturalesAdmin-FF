import '../database.dart';

class DepartamentoTable extends SupabaseTable<DepartamentoRow> {
  @override
  String get tableName => 'departamento';

  @override
  DepartamentoRow createRow(Map<String, dynamic> data) => DepartamentoRow(data);
}

class DepartamentoRow extends SupabaseDataRow {
  DepartamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartamentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);
}
