

import 'package:get/get.dart';

class HomeCtrl extends GetxController {

  final _isSignup = false.obs;
  final _isGetStarted = false.obs;
  final _isFeatures = false.obs;

  void setSignup(bool b) {
    _isSignup.value = b;
  }

  void setGetStarted(bool b) {
    _isGetStarted.value = b;
  }

  void setIsFeatures(bool b) {
    _isFeatures.value = b;
  }

  bool get isSignup => _isSignup.value;
  bool get isGetStarted => _isGetStarted.value;
  bool get isFeatures => _isFeatures.value;
}