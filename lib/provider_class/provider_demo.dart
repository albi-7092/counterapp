import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Providercounter with ChangeNotifier {
  int count = 0;
  void inc() {
    count++;
    notifyListeners();
  }
}
