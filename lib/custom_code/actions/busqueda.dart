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

Future busqueda(String search, int filter) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  var res;

  if (filter != 0) {
    res = await supabase
        .from('tourist_places')
        .select(
            'idTouristPlaces, name, description, type, image, location, types_places!inner(type)')
        .eq('type_places.idTipo', '%filter%')
        .like('name', '%search%');
  } else {
    res =
        await supabase.from('tourist_places').select().like('name', '%search%');
  }
}
