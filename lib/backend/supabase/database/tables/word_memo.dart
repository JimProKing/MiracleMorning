import '../database.dart';

class WordMemoTable extends SupabaseTable<WordMemoRow> {
  @override
  String get tableName => 'wordMemo';

  @override
  WordMemoRow createRow(Map<String, dynamic> data) => WordMemoRow(data);
}

class WordMemoRow extends SupabaseDataRow {
  WordMemoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WordMemoTable();

  int get pkno => getField<int>('pkno')!;
  set pkno(int value) => setField<int>('pkno', value);

  String? get memo => getField<String>('memo');
  set memo(String? value) => setField<String>('memo', value);

  int get random1 => getField<int>('random1')!;
  set random1(int value) => setField<int>('random1', value);

  int get random2 => getField<int>('random2')!;
  set random2(int value) => setField<int>('random2', value);
}
