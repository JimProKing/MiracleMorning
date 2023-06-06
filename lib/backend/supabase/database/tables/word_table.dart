import '../database.dart';

class WordTableTable extends SupabaseTable<WordTableRow> {
  @override
  String get tableName => 'wordTable';

  @override
  WordTableRow createRow(Map<String, dynamic> data) => WordTableRow(data);
}

class WordTableRow extends SupabaseDataRow {
  WordTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WordTableTable();

  int get pkno => getField<int>('pkno')!;
  set pkno(int value) => setField<int>('pkno', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get meaning => getField<String>('meaning');
  set meaning(String? value) => setField<String>('meaning', value);

  String? get example => getField<String>('example');
  set example(String? value) => setField<String>('example', value);

  String? get exmeaning => getField<String>('exmeaning');
  set exmeaning(String? value) => setField<String>('exmeaning', value);

  String? get triple => getField<String>('triple');
  set triple(String? value) => setField<String>('triple', value);

  String? get day => getField<String>('day');
  set day(String? value) => setField<String>('day', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get soundURL => getField<String>('soundURL');
  set soundURL(String? value) => setField<String>('soundURL', value);
}
