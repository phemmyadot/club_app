/// -----------------------------------------------------------------
///
/// File: app_content.dart
/// Project: YOUNION
/// File Created: Saturday, May 22nd, 2021
/// Description:
///
/// Author: Dorian Holmes - <<authorEmail>>
/// -----
/// Last Modified: Sunday, May 30th, 2021
/// Modified By: Dorian Holmes - dorian@longsoftware.io
/// -----
///
/// Copyright (C) 2021 - 2021 Fireside Solutions & YOUNION LLC
///
/// -----------------------------------------------------------------

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:la_isla/controllers/auth_controller.dart';

class BaseModel {
  AuthController authProvider = Get.find();

  DateTime? createdAt;
  String? id;
  String? createdBy;
  DateTime? lastUpdatedAt;
  DocumentReference? documentReference;
  DocumentSnapshot? documentSnapshot;

  BaseModel({
    this.createdAt,
    this.id,
    this.createdBy,
    this.lastUpdatedAt,
  }) {
    createdAt ??= DateTime.now();
    lastUpdatedAt ??= DateTime.now();
    createdBy ??= authProvider.firebaseUser.uid;
  }
  BaseModel.fromJson(
    Map<String, dynamic> jsonData, {
    DocumentReference? reference,
  })  : createdAt = jsonData['createdAt'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(jsonData['createdAt']),
        id = jsonData['id'],
        createdBy = jsonData['createdBy'],
        lastUpdatedAt = jsonData['lastUpdatedAt'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(jsonData['lastUpdatedAt']),
        documentReference = reference;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'createdAt': createdAt?.millisecondsSinceEpoch,
        'id': id,
        'createdBy': createdBy,
        'lastUpdatedAt': lastUpdatedAt?.millisecondsSinceEpoch,
      };
}
