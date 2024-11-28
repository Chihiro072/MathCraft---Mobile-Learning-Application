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

  int _question = 1;
  int get question => _question;
  set question(int value) {
    _question = value;
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _pw = '';
  String get pw => _pw;
  set pw(String value) {
    _pw = value;
  }
}
