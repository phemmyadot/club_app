import 'package:get/get.dart';
import 'package:la_isla/controllers/authentication_controller.dart';
import 'package:la_isla/controllers/splash_controller.dart';

class RootBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<SplashContoller>(
      () => SplashContoller(),
    );
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
