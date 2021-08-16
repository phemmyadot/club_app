import 'dart:async';

import 'package:get/get.dart';

class AuthController extends GetxController {
  StreamController<bool> authState = StreamController();

  @override
  void onInit() {
    authState.add(false);
    super.onInit();
  }
}
