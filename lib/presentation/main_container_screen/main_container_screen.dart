import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/presentation/main_page/main_page.dart';
import 'package:kenny_s_application1/presentation/matches_page/matches_page.dart';
import 'package:kenny_s_application1/presentation/messages_page/messages_page.dart';
import 'package:kenny_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MainContainerScreen extends StatelessWidget {
  MainContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.mainPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Cards:
        return AppRoutes.mainPage;
      case BottomBarEnum.Computer:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Menu:
        return AppRoutes.messagesPage;
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.matchesPage:
        return MatchesPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      default:
        return DefaultWidget();
    }
  }
}
