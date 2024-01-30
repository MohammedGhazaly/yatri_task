import 'package:flutter/material.dart';

class FlightGstProvider extends ChangeNotifier {
  bool isGst = false;
  bool isFlight = false;

  void toggleGst(bool? value) {
    isGst = value ?? isGst;
    notifyListeners();
  }

  void toggleFlight(bool? value) {
    isFlight = value ?? isFlight;
    notifyListeners();
  }
}
