import 'package:flutter/material.dart';
import 'package:kenny_s_application1/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:kenny_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:kenny_s_application1/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:kenny_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:kenny_s_application1/presentation/number_screen/number_screen.dart';
import 'package:kenny_s_application1/presentation/code_screen/code_screen.dart';
import 'package:kenny_s_application1/presentation/profile_details_one_screen/profile_details_one_screen.dart';
import 'package:kenny_s_application1/presentation/calendar_screen/calendar_screen.dart';
import 'package:kenny_s_application1/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:kenny_s_application1/presentation/i_am_screen/i_am_screen.dart';
import 'package:kenny_s_application1/presentation/passions_screen/passions_screen.dart';
import 'package:kenny_s_application1/presentation/friends_screen/friends_screen.dart';
import 'package:kenny_s_application1/presentation/notification_screen/notification_screen.dart';
import 'package:kenny_s_application1/presentation/location_screen/location_screen.dart';
import 'package:kenny_s_application1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:kenny_s_application1/presentation/main_container_screen/main_container_screen.dart';
import 'package:kenny_s_application1/presentation/swipe_right_screen/swipe_right_screen.dart';
import 'package:kenny_s_application1/presentation/swipe_left_screen/swipe_left_screen.dart';
import 'package:kenny_s_application1/presentation/match_screen/match_screen.dart';
import 'package:kenny_s_application1/presentation/swipe_left_vtwo_screen/swipe_left_vtwo_screen.dart';
import 'package:kenny_s_application1/presentation/filters_tab_container_screen/filters_tab_container_screen.dart';
import 'package:kenny_s_application1/presentation/chat_screen/chat_screen.dart';
import 'package:kenny_s_application1/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:kenny_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:kenny_s_application1/presentation/photo_fullsreen_screen/photo_fullsreen_screen.dart';
import 'package:kenny_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String numberScreen = '/number_screen';

  static const String codeScreen = '/code_screen';

  static const String profileDetailsOneScreen = '/profile_details_one_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String iAmScreen = '/i_am_screen';

  static const String passionsScreen = '/passions_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationScreen = '/notification_screen';

  static const String locationScreen = '/location_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String mainPage = '/main_page';

  static const String mainContainerScreen = '/main_container_screen';

  static const String swipeRightScreen = '/swipe_right_screen';

  static const String swipeLeftScreen = '/swipe_left_screen';

  static const String matchScreen = '/match_screen';

  static const String swipeLeftVtwoScreen = '/swipe_left_vtwo_screen';

  static const String filtersPage = '/filters_page';

  static const String filtersTabContainerScreen =
      '/filters_tab_container_screen';

  static const String matchesPage = '/matches_page';

  static const String messagesPage = '/messages_page';

  static const String chatScreen = '/chat_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String photoFullsreenScreen = '/photo_fullsreen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    numberScreen: (context) => NumberScreen(),
    codeScreen: (context) => CodeScreen(),
    profileDetailsOneScreen: (context) => ProfileDetailsOneScreen(),
    calendarScreen: (context) => CalendarScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    iAmScreen: (context) => IAmScreen(),
    passionsScreen: (context) => PassionsScreen(),
    friendsScreen: (context) => FriendsScreen(),
    notificationScreen: (context) => NotificationScreen(),
    locationScreen: (context) => LocationScreen(),
    signInScreen: (context) => SignInScreen(),
    mainContainerScreen: (context) => MainContainerScreen(),
    swipeRightScreen: (context) => SwipeRightScreen(),
    swipeLeftScreen: (context) => SwipeLeftScreen(),
    matchScreen: (context) => MatchScreen(),
    swipeLeftVtwoScreen: (context) => SwipeLeftVtwoScreen(),
    filtersTabContainerScreen: (context) => FiltersTabContainerScreen(),
    chatScreen: (context) => ChatScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    photoFullsreenScreen: (context) => PhotoFullsreenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
