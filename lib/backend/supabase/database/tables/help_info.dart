import '../database.dart';

class HelpInfoTable extends SupabaseTable<HelpInfoRow> {
  @override
  String get tableName => 'help_info';

  @override
  HelpInfoRow createRow(Map<String, dynamic> data) => HelpInfoRow(data);
}

class HelpInfoRow extends SupabaseDataRow {
  HelpInfoRow(super.data);

  @override
  SupabaseTable get table => HelpInfoTable();

  int get idHelpInfo => getField<int>('idHelpInfo')!;
  set idHelpInfo(int value) => setField<int>('idHelpInfo', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
