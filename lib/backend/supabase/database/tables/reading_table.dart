import '../database.dart';

class ReadingTableTable extends SupabaseTable<ReadingTableRow> {
  @override
  String get tableName => 'ReadingTable';

  @override
  ReadingTableRow createRow(Map<String, dynamic> data) => ReadingTableRow(data);
}

class ReadingTableRow extends SupabaseDataRow {
  ReadingTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReadingTableTable();

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);

  String? get eng => getField<String>('ENG');
  set eng(String? value) => setField<String>('ENG', value);

  String? get kor => getField<String>('KOR');
  set kor(String? value) => setField<String>('KOR', value);

  int get pkno => getField<int>('pkno')!;
  set pkno(int value) => setField<int>('pkno', value);

  bool? get chk => getField<bool>('chk');
  set chk(bool? value) => setField<bool>('chk', value);
}
