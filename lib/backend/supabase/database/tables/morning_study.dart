import '../database.dart';

class MorningStudyTable extends SupabaseTable<MorningStudyRow> {
  @override
  String get tableName => 'MorningStudy';

  @override
  MorningStudyRow createRow(Map<String, dynamic> data) => MorningStudyRow(data);
}

class MorningStudyRow extends SupabaseDataRow {
  MorningStudyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MorningStudyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get studyHour => getField<String>('StudyHour');
  set studyHour(String? value) => setField<String>('StudyHour', value);

  DateTime? get ymd => getField<DateTime>('YMD');
  set ymd(DateTime? value) => setField<DateTime>('YMD', value);
}
