import '../database.dart';

class CouponTable extends SupabaseTable<CouponRow> {
  @override
  String get tableName => 'coupon';

  @override
  CouponRow createRow(Map<String, dynamic> data) => CouponRow(data);
}

class CouponRow extends SupabaseDataRow {
  CouponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CouponTable();

  String get coupon => getField<String>('coupon')!;
  set coupon(String value) => setField<String>('coupon', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  int get no => getField<int>('no')!;
  set no(int value) => setField<int>('no', value);
}
