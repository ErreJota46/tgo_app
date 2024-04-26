import '../database.dart';

class UserSessionsTable extends SupabaseTable<UserSessionsRow> {
  @override
  String get tableName => 'user_sessions';

  @override
  UserSessionsRow createRow(Map<String, dynamic> data) => UserSessionsRow(data);
}

class UserSessionsRow extends SupabaseDataRow {
  UserSessionsRow(super.data);

  @override
  SupabaseTable get table => UserSessionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get loggedAt => getField<DateTime>('logged_at')!;
  set loggedAt(DateTime value) => setField<DateTime>('logged_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
