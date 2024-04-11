import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ysfecpxiauudgaztqfgb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlzZmVjcHhpYXV1ZGdhenRxZmdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI2NTQ4OTgsImV4cCI6MjAxODIzMDg5OH0.AWPfuWJ91UgZU8-8His9lMI3sMuvH2E1RWxzvvxJOeA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
