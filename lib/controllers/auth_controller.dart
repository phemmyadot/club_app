import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/model/user.dart';
import 'package:la_isla/services/authentication_service.dart';
import 'package:la_isla/utilities/utilities.dart';

class AuthController extends GetxController {
  AuthService authService = Get.find();

  Rx<User?> _firebaseUser = Rxn<User>();
  User get firebaseUser => _firebaseUser.value!;
  late Rx<AppUser> _userInfo;
  AppUser get userInfo => _userInfo.value;

  //------------- inputs------------//
  // decalrations
  late RxString _email;
  late RxString _password;
  late RxString _userName;
  late Rx<Gender> _gender;
  late RxInt _day;
  late RxInt _month;
  late RxInt _year;
  // getters
  String get email => _email.value;
  String get password => _password.value;
  String get userName => _userName.value;
  Gender get gender => _gender.value;
  int get day => _day.value;
  int get month => _month.value;
  int get year => _year.value;
  // setters
  set email(String val) => _email.value = val;
  set password(String val) => _password.value = val;
  set userName(String val) => _userName.value = val;
  set gender(Gender val) => _gender.value = val;
  set day(int val) => _day.value = val;
  set month(int val) => _month.value = val;
  set year(int val) => _year.value = val;
  //------------------------------//

  @override
  void onInit() {
    //default input value
    _email = ''.obs;
    _password = ''.obs;
    _userName = ''.obs;
    _gender = Gender.male.obs;
    _day = DateTime.now().day.obs;
    _month = DateTime.now().month.obs;
    _year = DateTime.now().year.obs;
    //------------------------------//

    _firebaseUser.bindStream(authService.authStateChanges());
    super.onInit();
  }

  void login() {
    if (loginFormNotValid) return showSnack('All fields are required');
    try {
      authService.login(email, password);
    } catch (e) {
      return showSnack(e.toString());
    }
  }

  void register() {
    if (registerFormNotValid) return showSnack('All fields are required');

    try {
      authService.register(email, password);
      _createUser();
      return;
    } catch (e) {
      return showSnack(e.toString());
    }
  }

  void _createUser() {
    AppUser user = AppUser.init(
        email: _firebaseUser.value!.email,
        uid: _firebaseUser.value!.uid,
        dateOfBirth: DateTime(_year.value, _month.value, _day.value),
        gender: _gender.value,
        userName: _userName.value);
    try {
      authService.storeUserData(user.toJson());
    } catch (e) {
      return showSnack(e.toString());
    }
  }

  getCurrentUser() async {
    if (_firebaseUser.value == null) {
      return null;
    }
    AppUser? user = await authService.getUserData(_firebaseUser.value!.uid);
    if (user == null)
      _createUser();
    else
      _userInfo.value = user;
  }

  //validation
  bool get loginFormNotValid =>
      _email.value.isBlank! || _password.value.isBlank!;
  bool get registerFormNotValid =>
      (_email.value.isBlank! || !_email.value.isEmail) ||
      _password.value.isBlank! ||
      _userName.value.isBlank!;
  //----------------------------------//
}
