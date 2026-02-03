import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get usuario => getField<String>('usuario')!;
  set usuario(String value) => setField<String>('usuario', value);

  String get contrasena => getField<String>('contrasena')!;
  set contrasena(String value) => setField<String>('contrasena', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  int get edad => getField<int>('edad')!;
  set edad(int value) => setField<int>('edad', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int? get departamentoId => getField<int>('departamento_id');
  set departamentoId(int? value) => setField<int>('departamento_id', value);

  int? get carreraId => getField<int>('carrera_id');
  set carreraId(int? value) => setField<int>('carrera_id', value);
}
