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

Future<String> modificarUsuario(
  int id,
  String usuario,
  String contrasena,
  String nombre,
  int edad,
) async {
  final supabase = Supabase.instance.client;

  final res = await supabase.from('usuarios').update({
    'usuario': usuario,
    'contrasena': contrasena,
    'nombre': nombre,
    'edad': edad,
  }).eq('id', id);

  return "Se ha modificado el usuario";
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
