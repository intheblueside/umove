import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String fareCalculationFunction(
  DateTime bookingTime,
  String noPass,
) {
  // Parse the number of passengers
  int passengers = int.tryParse(noPass) ?? 0;

  // Check if booking time is during peak hours
  bool isPeakHour = (bookingTime.hour >= 17 && bookingTime.hour < 20) ||
      (bookingTime.hour >= 7 && bookingTime.hour < 9);

  // Calculate base fare
  double baseFare = isPeakHour ? 6.0 : 5.0;

  // Calculate additional charge for more than 4 passengers
  double additionalCharge = passengers > 4 ? 1.0 : 0.0;

  // Calculate total fare
  double totalFare = baseFare + additionalCharge;

  return totalFare.toStringAsFixed(2);
}

double getCarbonFootprint() {
  // Define the distance (fixed value)
  double distance = 10.0; // For example, 10 km

  // Define the carbon footprint calculation for car travel (e.g., 0.3 kg CO2 per km)
  double carbonFootprint = distance * 0.3; // 0.3 kg CO2 per km for car

  // Define the maximum goal for carbon footprint (e.g., 10 kg CO2)
  double maxCarbonFootprint = 10.0;

  // Normalize the value by dividing by the max value
  double normalizedProgress = carbonFootprint / maxCarbonFootprint;

  // Return the normalized value (between 0.0 and 1.0)
  return normalizedProgress;
}

String etaFunction(DateTime bookingTime) {
  // Generate a random number between 5 and 15
  int randomMinutes = math.Random().nextInt(11) + 5;

  // Calculate the estimated arrival time by adding the random minutes to the booking time
  DateTime estimatedArrivalTime =
      bookingTime.add(Duration(minutes: randomMinutes));

  // Return the estimated arrival time as a formatted string
  return DateFormat('hh:mm a').format(estimatedArrivalTime);
}
