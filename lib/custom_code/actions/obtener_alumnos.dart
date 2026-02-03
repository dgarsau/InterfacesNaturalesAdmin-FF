// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<dynamic> obtenerAlumnos() async {
  final supabase = Supabase.instance.client;
  final res = await supabase.from('usuarios').select().eq('tipo', 'alumno');
  return res;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
