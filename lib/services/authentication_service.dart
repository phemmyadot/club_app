import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:la_isla/model/user.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/utilities/utilities.dart';

class AuthService extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  final CollectionReference<Map<String, dynamic>> _userRef =
      FirebaseFirestore.instance.collection("Users");

  Future<AuthService> init() async {
    print('$runtimeType delays 2 sec');
    await 2.delay();
    print('$runtimeType ready!');
    return this;
  }

  Stream<User?> authStateChanges() => _auth.authStateChanges();
  Stream<bool> isUserLoggedIn() =>
      _auth.authStateChanges().map((u) => u != null);

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw HttpException(e.message ?? Strings.errorOccured);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }

  Future<User?> register(String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      throw HttpException(e.message ?? Strings.errorOccured);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }

  Future<void> storeUserData(Map<String, dynamic> user) async {
    await _userRef.add(user);
  }

  Future<AppUser?> getUserData(String uid) async {
    try {
      final user = await _userRef.doc(uid).get();
      return AppUser.fromJson(user.data()!);
    } on FirebaseException catch (e) {
      throw HttpException(e.message ?? Strings.errorOccured);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}
