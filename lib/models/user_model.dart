import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String userEmail;
  String userName;
  int phoneNo;
  List<String> favoriteList;

  UserModel({
    required this.uid,
    required this.userEmail,
    required this.userName,
    required this.phoneNo,
    required this.favoriteList,
  });

  // Convert UserModel to Map for storing in Firestore
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'user_email': userEmail,
      'user_name': userName,
      'phone_no': phoneNo,
      'favorite_list': favoriteList,
    };
  }

  // Create a UserModel from Firestore DocumentSnapshot
  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      uid: doc['uid'] as String,
      userEmail: doc['user_email'] as String,
      userName: doc['user_name'] as String,
      phoneNo: doc['phone_no'] as int,
      favoriteList: List<String>.from(doc['favorite_list'] ?? []),
    );
  }
}
