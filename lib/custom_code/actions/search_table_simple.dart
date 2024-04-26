// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<dynamic>> searchTableSimple(String search, int filter) async {
  if (filter != 0) {
    try {
      final supabase = SupaFlow.client;
      final response = await supabase.rpc('search_table_FILTER',
          params: {'p_search_term': search, 'p_join_id': filter});
      // Print the raw response for debugging purposes
      print('Raw Response: $response');

      return response;
    } catch (e) {
      print('Exception: $e');
      // Return an empty list in case of an exception
      return [];
    }
  } else {
    try {
      final supabase = SupaFlow.client;
      final response = await supabase.rpc('search_table', params: {
        'p_search_term': search,
      });
      // Print the raw response for debugging purposes
      print('Raw Response: $response');

      return response;
    } catch (e) {
      print('Exception: $e');
      // Return an empty list in case of an exception
      return [];
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
