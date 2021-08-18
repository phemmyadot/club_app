import 'package:get/get.dart';
import 'package:la_isla/controllers/auth_controller.dart';
import 'package:la_isla/controllers/splash_controller.dart';
import 'package:la_isla/services/authentication_service.dart';

class RootBinding extends Bindings {
  void dependencies() async {
    //Services
    await Get.putAsync(() => AuthService().init());

    // State
    Get.lazyPut<SplashContoller>(() => SplashContoller());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
