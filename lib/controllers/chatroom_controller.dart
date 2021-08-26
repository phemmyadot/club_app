import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomTabController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController chatRoomController;

  @override
  void onInit() {
    super.onInit();

    chatRoomController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    chatRoomController.dispose();
    super.onClose();
  }
}
