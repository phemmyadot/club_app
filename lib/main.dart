import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:la_isla/pages/root_binding.dart';
import 'package:la_isla/pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(Get.context!);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusScope.of(Get.context!).requestFocus(FocusNode());
        }
      },
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialBinding: RootBinding(),
          theme: ThemeData(
            fontFamily: GoogleFonts.getFont('Montserrat').fontFamily,
            primarySwatch: Colors.blue,
          ),
          home: Splash()),
    );
  }
}
