import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/model/base.dart';

class AppUser extends BaseModel {
  AppUser({
    DateTime? createdAt,
    DateTime? lastUpdatedAt,
    String? id,
    String? createdBy,
    DocumentSnapshot? documentSnapshot,
    this.userName,
    this.email,
    this.gender,
    this.dateOfBirth,
    this.type,
  }) : super(
          createdAt: createdAt,
          lastUpdatedAt: lastUpdatedAt,
          id: id,
          createdBy: createdBy,
        );

  AppUser.init({
    required this.email,
    required this.userName,
    required this.gender,
    required this.dateOfBirth,
    required String uid,
  }) {
    DateTime now = DateTime.now();
    createdAt = now;
    lastUpdatedAt = now;
    id = uid;
  }

  String? userName;
  String? email;
  Gender? gender;
  UserType? type;
  DateTime? dateOfBirth;

  AppUser.fromJson(Map<String, dynamic> json, {DocumentReference? reference})
      : userName = json['userName'],
        email = json['email'],
        gender = json['gender'],
        dateOfBirth = json['dateOfBirth'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(json['dateOfBirth']),
        type = EnumToString.fromString(UserType.values, json['type']),
        super.fromJson(json, reference: reference);

  @override
  Map<String, dynamic> toJson() => super.toJson()
    ..addAll(<String, dynamic>{
      'userName': userName,
      'email': email,
      'gender': EnumToString.convertToString(gender),
      'dateOfBirth': dateOfBirth?.millisecondsSinceEpoch,
      'type': type == null ? null : EnumToString.convertToString(type)
    });
}
