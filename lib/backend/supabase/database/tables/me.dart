import '../database.dart';

class MeTable extends SupabaseTable<MeRow> {
  @override
  String get tableName => 'Me';

  @override
  MeRow createRow(Map<String, dynamic> data) => MeRow(data);
}

class MeRow extends SupabaseDataRow {
  MeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get lunchDate => getField<DateTime>('lunchDate');
  set lunchDate(DateTime? value) => setField<DateTime>('lunchDate', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get playLink => getField<String>('playLink');
  set playLink(String? value) => setField<String>('playLink', value);

  String? get appLink => getField<String>('AppLink');
  set appLink(String? value) => setField<String>('AppLink', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);
}
