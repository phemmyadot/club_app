import 'dart:async';
import 'package:get/get.dart';

class SplashContoller extends GetxController {
  RxBool _isLoaded = false.obs;
  bool get isLoaded => _isLoaded.value;

  @override
  void onInit() {
    startTime();
    super.onInit();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, () => _isLoaded.value = true);
  }
}
