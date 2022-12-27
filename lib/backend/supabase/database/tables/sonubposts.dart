import '../database.dart';

class SonubpostsTable extends SupabaseTable<SonubpostsRow> {
  @override
  String get tableName => 'sonubposts';

  @override
  SonubpostsRow createRow(Map<String, dynamic> data) => SonubpostsRow(data);
}

class SonubpostsRow extends SupabaseDataRow {
  SonubpostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SonubpostsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get noOfViews => getField<int>('noOfViews')!;
  set noOfViews(int value) => setField<int>('noOfViews', value);
}
