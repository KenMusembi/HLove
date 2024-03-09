import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_bottom_bar.dart';
import 'package:hlove/presentation/matches_page/matches_page.dart';
import 'package:hlove/presentation/admirers_page/admirers_page.dart';
import 'package:hlove/presentation/interests_page/interests_page.dart';
import 'package:hlove/presentation/profile_screen/profile_screen.dart';

class Item {
  String name;
  String age;
  String occupation;
  String distance;
  String imageUrl;
  bool isSelected;

  Item({required this.name, required this.age, required this.occupation,required this.distance, required this.imageUrl, this.isSelected = false});
}

class MyApp extends StatelessWidget {

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainPage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Item> _items = [
    Item(name: 'Esther Njeri', age: '23', occupation: 'Per Educator', distance: '5', imageUrl: 'assets/images/img_camera.png'),
    Item(name: 'Stacy Chemutai', age: '31', occupation: 'Photographer', distance: '11', imageUrl: 'assets/images/img_bag.png'),
    Item(name: 'Anne Latema', age: '35', occupation: 'Tailor', distance: '3', imageUrl: 'assets/images/img_voice.png'),
    Item(name: 'Lisa Onyango', age: '26', occupation: 'Accountant', distance: '9', imageUrl: 'assets/images/img_yoga.png')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        //title: Text('MainPage'),
        leadingWidth: 92.h,
        leading:  AppbarIconbutton(
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 40.h, top: 2.v, bottom: 2.v),
            onTap: () {
              onTapArrowleftone(context);
            }),
        centerTitle: true,
        title: Column(children: [
          AppbarSubtitle(text: "lbl_discover".tr),
          AppbarSubtitle2(
              text: "lbl_kutus".tr,
              margin: EdgeInsets.only(left: 31.h, right: 32.h))
        ]),
        actions: [
          AppbarIconbutton1(
              svgPath: ImageConstant.imgSettings,
              onTap: () {
                goToFilters(context);
              },
              margin:
              EdgeInsets.symmetric(horizontal: 40.h, vertical: 2.v)),
        ],
      ),
      body: Container(
          width: mediaQueryData.size.width,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 22.v),
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapContent(context);
                        },
                        child: SizedBox(
                            height: 466.v,
                            width: 295.h,
                            child: Stack(
                                alignment: Alignment.center,
                                children: [:
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 450.v,
                                          width: 295.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPhoto450x295,
                                                    height: 450.v,
                                                    width: 295.h,
                                                    radius:
                                                    BorderRadius.circular(
                                                        15.h),
                                                    alignment:
                                                    Alignment.center),
                                                Align(
                                                    alignment:
                                                    Alignment.center,
                                                    child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          CustomElevatedButton(
                                                            decoration: BoxDecoration(color: Colors.black12),
                                                              height: 34.v,
                                                              width: 61.h,
                                                              text: "lbl_1_km"
                                                                  .tr,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                  left: 16
                                                                      .h),
                                                              leftIcon: Container(
                                                                  margin: EdgeInsets.only(
                                                                      right: 2
                                                                          .h),
                                                                  child: CustomImageView(
                                                                    color: Colors.white,
                                                                      svgPath: ImageConstant
                                                                          .imgLocation)),
                                                              //buttonStyle:
                                                             //ButtonStyle(backgroundColor: Colors.black12),
                                                              buttonTextStyle:
                                                              TextStyle(color: Colors.white)),
                                                          SizedBox(
                                                              height: 92.v),
                                                          CustomImageView(
                                                              svgPath:
                                                              ImageConstant
                                                                  .imgOverflowmenu,
                                                              height: 76.v,
                                                              width: 20.h,
                                                              alignment: Alignment
                                                                  .centerRight),
                                                          SizedBox(
                                                              height: 145.v),
                                                          Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              color: appTheme
                                                                  .black900,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderBL15),
                                                              child:
                                                              Container(
                                                                  height: 83
                                                                      .v,
                                                                  width: 295
                                                                      .h,
                                                                  decoration: AppDecoration.fillBlack.copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .customBorderBL15),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment.topLeft,
                                                                      children: [
                                                                        CustomImageView(imagePath: ImageConstant.imgPhoto83x295, height: 83.v, width: 295.h, radius: BorderRadius.vertical(bottom: Radius.circular(15.h)), alignment: Alignment.center),
                                                                        Align(
                                                                            alignment: Alignment.topLeft,
                                                                            child: Padding(
                                                                                padding: EdgeInsets.only(left: 16.h, top: 11.v),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                  Text("msg_esther_njeri_23".tr, style: CustomTextStyles.headlineSmallOnPrimary),
                                                                                  SizedBox(height: 3.v),
                                                                                  Text("lbl_peer_educator".tr, style: CustomTextStyles.bodyMediumOnPrimary)
                                                                                ])))
                                                                      ])))
                                                        ]))
                                              ])))
                                ]))),
                    SizedBox(height: 21.v),
                    CustomImageView(
                        color: Colors.red,
                        svgPath: ImageConstant.imgLiky,
                        height: 36.adaptSize,
                        width: 42.adaptSize),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white54,
                            child: CustomImageView(
                                onTap: () {
                                  print('star selected');
                                },
                                svgPath: ImageConstant
                                    .imgCloseYellow900),
                          )),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),
                              child:
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: CustomImageView(
                                onTap: () {
                                  print('star selected');
                                },
                                height: 62,
                                width: 62,
                                color: Colors.red,
                                svgPath: ImageConstant
                                    .imgVector),
                          )),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(4, 8), // Shadow position
                                  ),
                                ],
                              ),
                              child:
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CustomImageView(
                                onTap: () {
                                  print('star selected');
                                },
                                svgPath: ImageConstant
                                    .imgStar),
                          ))
                        ])
                  ]))),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              context, getCurrentRoute(type));
        },
      ),
    ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the swipeLeftScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the swipeLeftScreen.
  onTapContent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.admirersPage);
  }

  goToFilters(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filtersPage);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Discover:
        return AppRoutes.mainPage;
      case BottomBarEnum.Admirers:
        return AppRoutes.admirersPage;
      case BottomBarEnum.Interests:
        return AppRoutes.interestsPage;
      case BottomBarEnum.Matches:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return AppRoutes.mainPage;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.admirersPage:
        return AdmirersPage();
      case AppRoutes.interestsPage:
        return InterestsPage();
      case AppRoutes.matchesPage:
        return MatchesPage();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
