import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _emailState = false;
  bool get emailState => _emailState;
  set emailState(bool value) {
    _emailState = value;
  }

  String _passwordState = '';
  String get passwordState => _passwordState;
  set passwordState(String value) {
    _passwordState = value;
  }

  String _selectPaymentState = '';
  String get selectPaymentState => _selectPaymentState;
  set selectPaymentState(String value) {
    _selectPaymentState = value;
  }

  double _carbonFootprintState = 0.0;
  double get carbonFootprintState => _carbonFootprintState;
  set carbonFootprintState(double value) {
    _carbonFootprintState = value;
  }
}
