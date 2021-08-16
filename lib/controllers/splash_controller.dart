import 'dart:async';
import 'package:get/get.dart';
import 'package:la_isla/pages/auth_guard_page.dart';

class SplashContoller extends GetxController {
  late Timer timer;
  RxBool _isLoaded = false.obs;
  bool get isLoaded => _isLoaded.value;

  @override
  void onInit() {
    startTime();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();

    timer.cancel();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, () => _isLoaded.value = true);
    // return new Timer(duration, () => Get.offAll(() => AuthGuardPage()));
  }
}
