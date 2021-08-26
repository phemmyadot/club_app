import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatTabController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController chatController;

  @override
  void onInit() {
    super.onInit();

    chatController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    chatController.dispose();
    super.onClose();
  }
}
