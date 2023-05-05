import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isSearch = false.obs;
  var isLogin = false.obs;

  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? user;
  UserCredential? userCredential;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void checkToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = pref.getString('login');

    if (kDebugMode) {
      print(val);
    }
    if (val != null) {
      Get.toNamed(AppRouters.main);
    } else {
      Get.toNamed(AppRouters.login);
    }
  }

  Future<void> handleSignIn() async {
    try {
      await googleSignIn.signOut();
      await googleSignIn.signIn().then((value) => user = value);

      final isSignIn = await googleSignIn.isSignedIn();

      if (isSignIn) {
        if (kDebugMode) {
          print(user);
          print("Berhasil Login");
        }

        final googleAuth = await user!.authentication;

        final credential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        );

        SharedPreferences pref = await SharedPreferences.getInstance();

        await pref.setString('login', googleAuth.accessToken!);

        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) => userCredential = value);

        if (kDebugMode) {
          print(userCredential);
        }

        CollectionReference collectionReference = firestore.collection("users");

        collectionReference.doc(user!.email).set({
          "name": user!.displayName,
          "email": user!.email,
          "photoUrl": user!.photoUrl,
          "createdAt":
              userCredential!.user!.metadata.creationTime!.toIso8601String(),
          "updateTime": DateTime.now().toIso8601String()
        });
        isLogin(true);
        Get.toNamed(AppRouters.main);
      } else {
        if (kDebugMode) {
          print("Gagal Login");
        }
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  Future<void> handleSignOut() async {
    try {
      await googleSignIn.signOut();
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.clear();
      Get.offNamed(AppRouters.login);
      if (kDebugMode) {
        print("Logout Berhasil");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  late TabController tabController;

  final TextEditingController search = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
  }

  var tabIndex = 0.obs;

  var selectedValue = 'Option 1'.obs;

  void changeValue(String newValue) {
    selectedValue.value = newValue;
  }

  List<String> get chats => [
        'New group',
        'New broadcast',
        'Linked devices',
        'Stared messages',
        'Settings'
      ];
  List<String> get selectContact => [
        'Invite a frirnd',
        'Contact',
        'Refresh',
        'Help',
      ];

  List<String> get community => ['Settings'];
  List<String> get calls => ['Clear call logs', 'Settings'];
  List<String> get status => ['Status privacy', 'Settings'];

  var searchText = ''.obs;

  void setSearchText(String text) {
    searchText.value = text;
  }

  bool get isSearchEmpty => searchText.value.trim().isEmpty;
}
