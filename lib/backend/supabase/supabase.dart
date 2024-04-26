import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://gghenqorrhhhhiddmrfq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs';

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
