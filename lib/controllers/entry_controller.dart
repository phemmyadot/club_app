import 'package:get/get.dart';

class EntryController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    // print(index);
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
