import '../database.dart';

class LegalDocumentsTable extends SupabaseTable<LegalDocumentsRow> {
  @override
  String get tableName => 'legal_documents';

  @override
  LegalDocumentsRow createRow(Map<String, dynamic> data) =>
      LegalDocumentsRow(data);
}

class LegalDocumentsRow extends SupabaseDataRow {
  LegalDocumentsRow(super.data);

  @override
  SupabaseTable get table => LegalDocumentsTable();

  int get idDoc => getField<int>('idDoc')!;
  set idDoc(int value) => setField<int>('idDoc', value);

  String? get documentType => getField<String>('document_type');
  set documentType(String? value) => setField<String>('document_type', value);

  String? get documentContent => getField<String>('document_content');
  set documentContent(String? value) =>
      setField<String>('document_content', value);
}
