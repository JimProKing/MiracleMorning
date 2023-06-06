import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://skrdmdxauwjotbbpeigg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNrcmRtZHhhdXdqb3RiYnBlaWdnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODAwMDY1ODAsImV4cCI6MTk5NTU4MjU4MH0.7k4IDNSZpdJk-5vFMH5bDeWMZQMn7bVuzd9cpsqEMXk';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
