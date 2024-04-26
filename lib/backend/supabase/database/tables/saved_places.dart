import '../database.dart';

class SavedPlacesTable extends SupabaseTable<SavedPlacesRow> {
  @override
  String get tableName => 'saved_places';

  @override
  SavedPlacesRow createRow(Map<String, dynamic> data) => SavedPlacesRow(data);
}

class SavedPlacesRow extends SupabaseDataRow {
  SavedPlacesRow(super.data);

  @override
  SupabaseTable get table => SavedPlacesTable();

  int get idSavedPlaces => getField<int>('idSavedPlaces')!;
  set idSavedPlaces(int value) => setField<int>('idSavedPlaces', value);

  int? get placeId => getField<int>('place_id');
  set placeId(int? value) => setField<int>('place_id', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  DateTime get savedAt => getField<DateTime>('saved_at')!;
  set savedAt(DateTime value) => setField<DateTime>('saved_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
