// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> newCustomAction() async {
  // function who takes the current data and add 115 days to return a new date
  DateTime currentDate = DateTime.now();
  DateTime newDate = currentDate.add(Duration(days: 115));
  String formattedDate =
      "${newDate.year}-${newDate.month.toString().padLeft(2, '0')}-${newDate.day.toString().padLeft(2, '0')}";
  return formattedDate;
}
