import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isFirstSignIn = prefs.getBool('ff_isFirstSignIn') ?? _isFirstSignIn;
    });
    _safeInit(() {
      _isFirstSignal = prefs.getBool('ff_isFirstSignal') ?? _isFirstSignal;
    });
    _safeInit(() {
      _isFirstAlert = prefs.getBool('ff_isFirstAlert') ?? _isFirstAlert;
    });
    _safeInit(() {
      _isFirstSignUp = prefs.getBool('ff_isFirstSignUp') ?? _isFirstSignUp;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  bool _isFirstSignIn = true;
  bool get isFirstSignIn => _isFirstSignIn;
  set isFirstSignIn(bool value) {
    _isFirstSignIn = value;
    prefs.setBool('ff_isFirstSignIn', value);
  }

  bool _isFirstSignal = true;
  bool get isFirstSignal => _isFirstSignal;
  set isFirstSignal(bool value) {
    _isFirstSignal = value;
    prefs.setBool('ff_isFirstSignal', value);
  }

  bool _isFirstAlert = true;
  bool get isFirstAlert => _isFirstAlert;
  set isFirstAlert(bool value) {
    _isFirstAlert = value;
    prefs.setBool('ff_isFirstAlert', value);
  }

  bool _isFirstSignUp = true;
  bool get isFirstSignUp => _isFirstSignUp;
  set isFirstSignUp(bool value) {
    _isFirstSignUp = value;
    prefs.setBool('ff_isFirstSignUp', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
