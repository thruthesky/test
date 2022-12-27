import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

const _kSupabaseUrl = 'https://kjlezwfqiitsggumxqyw.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtqbGV6d2ZxaWl0c2dndW14cXl3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzEzNjI2NDksImV4cCI6MTk4NjkzODY0OX0.qnTkAP2qU80WsgBSntsj3g9mAQakbAw07er1hXoJGiI';

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
