import '../database.dart';

class TouristPlacesTable extends SupabaseTable<TouristPlacesRow> {
  @override
  String get tableName => 'tourist_places';

  @override
  TouristPlacesRow createRow(Map<String, dynamic> data) =>
      TouristPlacesRow(data);
}

class TouristPlacesRow extends SupabaseDataRow {
  TouristPlacesRow(super.data);

  @override
  SupabaseTable get table => TouristPlacesTable();

  int get idTouristPlaces => getField<int>('idTouristPlaces')!;
  set idTouristPlaces(int value) => setField<int>('idTouristPlaces', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get type => getField<int>('type')!;
  set type(int value) => setField<int>('type', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  bool? get saved => getField<bool>('saved');
  set saved(bool? value) => setField<bool>('saved', value);
}
