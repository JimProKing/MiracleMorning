import '../database.dart';

class SeriesTable extends SupabaseTable<SeriesRow> {
  @override
  String get tableName => 'series';

  @override
  SeriesRow createRow(Map<String, dynamic> data) => SeriesRow(data);
}

class SeriesRow extends SupabaseDataRow {
  SeriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeriesTable();

  String get main => getField<String>('main')!;
  set main(String value) => setField<String>('main', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  int? get order => getField<int>('order');
  set order(int? value) => setField<int>('order', value);

  String? get google => getField<String>('google');
  set google(String? value) => setField<String>('google', value);

  String? get apple => getField<String>('apple');
  set apple(String? value) => setField<String>('apple', value);
}
