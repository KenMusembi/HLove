import 'package:flutter/material.dart';
import 'package:hlove/presentation/main_page/main_page.dart';
import 'package:hlove/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hlove/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:hlove/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:hlove/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hlove/presentation/number_screen/number_screen.dart';
import 'package:hlove/presentation/code_screen/code_screen.dart';
import 'package:hlove/presentation/profile_details_one_screen/profile_details_one_screen.dart';
import 'package:hlove/presentation/date_of_birth_screen/date_of_birth_screen.dart';
import 'package:hlove/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:hlove/presentation/i_am_screen/i_am_screen.dart';
import 'package:hlove/presentation/passions_screen/passions_screen.dart';
import 'package:hlove/presentation/friends_screen/friends_screen.dart';
import 'package:hlove/presentation/notification_screen/notification_screen.dart';
import 'package:hlove/presentation/location_screen/location_screen.dart';
import 'package:hlove/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:hlove/presentation/filters_tab_container_screen/filters_tab_container_screen.dart';
import 'package:hlove/presentation/main_container_screen/main_container_screen.dart';
import 'package:hlove/presentation/swipe_left_screen/swipe_left_screen.dart';
import 'package:hlove/presentation/match_screen/match_screen.dart';
import 'package:hlove/presentation/profile_screen/profile_screen.dart';
import 'package:hlove/presentation/gallery_screen/gallery_screen.dart';
import 'package:hlove/presentation/photo_fullsreen_screen/photo_fullsreen_screen.dart';
import 'package:hlove/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String numberScreen = '/number_screen';

  static const String codeScreen = '/code_screen';

  static const String profileDetailsOneScreen = '/profile_details_one_screen';

  static const String dateOfBirthScreen = '/date_of_birth_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String iAmScreen = '/i_am_screen';

  static const String passionsScreen = '/passions_screen';

  static const String friendsScreen = '/friends_screen';

  static const String notificationScreen = '/notification_screen';

  static const String locationScreen = '/location_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String filtersPage = '/filters_page';

  static const String filtersTabContainerScreen =
      '/filters_tab_container_screen';

  static const String mainPage = '/main_page';

  static const String mainContainerScreen = '/main_container_screen';

  static const String swipeLeftScreen = '/swipe_left_screen';

  static const String matchScreen = '/match_screen';

  static const String matchesPage = '/matches_page';

  static const String profileScreen = '/profile_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String photoFullsreenScreen = '/photo_fullsreen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    numberScreen: (context) => NumberScreen(),
    mainPage: (context) => MainPage(),
    codeScreen: (context) => CodeScreen(),
    profileDetailsOneScreen: (context) => ProfileDetailsOneScreen(),
    dateOfBirthScreen: (context) => DateOfBirthScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    iAmScreen: (context) => IAmScreen(),
    passionsScreen: (context) => PassionsScreen(),
    friendsScreen: (context) => FriendsScreen(),
    notificationScreen: (context) => NotificationScreen(),
    locationScreen: (context) => LocationScreen(),
    signInScreen: (context) => SignInScreen(),
    filtersTabContainerScreen: (context) => FiltersTabContainerScreen(),
    mainContainerScreen: (context) => MainContainerScreen(),
    swipeLeftScreen: (context) => SwipeLeftScreen(),
    matchScreen: (context) => MatchScreen(),
    profileScreen: (context) => ProfileScreen(),
    galleryScreen: (context) => GalleryScreen(),
    photoFullsreenScreen: (context) => PhotoFullsreenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
