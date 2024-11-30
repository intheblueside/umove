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
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> changePassword(
    String currentPass, String newPass, String email) async {
  try {
    User? user = FirebaseAuth.instance.currentUser;

    // Authenticate the user.
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPass,
    );
    await user?.reauthenticateWithCredential(credential);

    // If auth is successful, change the password.
    await user?.updatePassword(newPass);

    // Password changed successfully.
    return true;
  } catch (e) {
    // Handle reauthentication errors and password change errors.
    return false;
  }
}
