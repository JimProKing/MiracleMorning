import '../database.dart';

class MorningUserTable extends SupabaseTable<MorningUserRow> {
  @override
  String get tableName => 'MorningUser';

  @override
  MorningUserRow createRow(Map<String, dynamic> data) => MorningUserRow(data);
}

class MorningUserRow extends SupabaseDataRow {
  MorningUserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MorningUserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get goal => getField<DateTime>('goal');
  set goal(DateTime? value) => setField<DateTime>('goal', value);
}
