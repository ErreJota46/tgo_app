import '../database.dart';

class TypesPlacesTable extends SupabaseTable<TypesPlacesRow> {
  @override
  String get tableName => 'types_places';

  @override
  TypesPlacesRow createRow(Map<String, dynamic> data) => TypesPlacesRow(data);
}

class TypesPlacesRow extends SupabaseDataRow {
  TypesPlacesRow(super.data);

  @override
  SupabaseTable get table => TypesPlacesTable();

  int get idTipo => getField<int>('idTipo')!;
  set idTipo(int value) => setField<int>('idTipo', value);

  String? get nameTipo => getField<String>('nameTipo');
  set nameTipo(String? value) => setField<String>('nameTipo', value);

  String? get descTipo => getField<String>('descTipo');
  set descTipo(String? value) => setField<String>('descTipo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
