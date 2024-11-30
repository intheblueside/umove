// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String> calculateETA(int departHour, int departMinute) async {
  DateTime now = DateTime.now(); // Get current time
  DateTime departureTime = DateTime(now.year, now.month, now.day, departHour,
      departMinute); // Bus departure time

  Duration timeDifference = departureTime.isAfter(now)
      ? departureTime.difference(now)
      : Duration(days: 1) +
          departureTime.difference(now); // In case the departure is tomorrow

  int hoursLeft = timeDifference.inHours;
  int minutesLeft = timeDifference.inMinutes % 60;

  return "$hoursLeft hr $minutesLeft min"; // Return the ETA as string
}
