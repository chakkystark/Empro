import 'package:Empro/CentralDatabase/selectlanguages.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleNotifier extends ChangeNotifier {
  String _selectlanguage = languages[0];

  SingleNotifier();

  String get selectLanguage => _selectlanguage;
  updatelanguage(String value) {
    if (value != _selectlanguage) {
      _selectlanguage = value;
      notifyListeners();
    }
  }
}
