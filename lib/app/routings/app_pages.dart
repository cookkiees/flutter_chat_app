import 'package:flutter_chat_app/app/modules/popupmenu/settings/views/account_page.dart';
import 'package:get/get.dart';
import '../modules/auth/login/login_page.dart';
import '../modules/calls/views/select_calls_page.dart';
import '../modules/chats/views/chats_room.dart';
import '../modules/chats/views/select_chats_page.dart';
import '../modules/main/main_screen.dart';
import '../modules/main/main_binding.dart';
import '../modules/popupmenu/settings/settings_page.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.login;

  static final routes = [
    GetPage(
      name: AppRouters.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.selectChats,
      page: () => const SelectChatsPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.selectCalls,
      page: () => const SelectCallsPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.setting,
      page: () => const SettingPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.login,
      page: () => const LoginPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.chatsRoom,
      page: () => const ChatsRoomPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.account,
      page: () => const AccountPage(),
      binding: MainBinding(),
    ),
  ];
}
