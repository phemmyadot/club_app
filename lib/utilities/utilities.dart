import 'package:get/get.dart';
import 'package:la_isla/theme/colors.dart';

void showSnack(String message) => Get.showSnackbar(GetBar(
    duration: Duration(seconds: 2),
    message: message,
    dismissDirection: SnackDismissDirection.VERTICAL,
    backgroundColor: AppColors.primaryPink.withOpacity(0.5)));
