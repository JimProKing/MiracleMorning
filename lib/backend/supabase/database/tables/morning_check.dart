import '../database.dart';

class MorningCheckTable extends SupabaseTable<MorningCheckRow> {
  @override
  String get tableName => 'MorningCheck';

  @override
  MorningCheckRow createRow(Map<String, dynamic> data) => MorningCheckRow(data);
}

class MorningCheckRow extends SupabaseDataRow {
  MorningCheckRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MorningCheckTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  int? get month => getField<int>('month');
  set month(int? value) => setField<int>('month', value);

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);

  DateTime get ymd => getField<DateTime>('YMD')!;
  set ymd(DateTime value) => setField<DateTime>('YMD', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
