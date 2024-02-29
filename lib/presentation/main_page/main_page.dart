import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                children: [
                                  CustomImageView(
                                      imagePath:
                                      ImageConstant.imgPhoto450x231,
                                      height: 450.v,
                                      width: 231.h,
                                      radius: BorderRadius.circular(15.h),
                                      alignment: Alignment.topCenter),
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
                          CustomImageView(
                              svgPath: ImageConstant.imgCloseYellow900,
                              height: 30.adaptSize,
                              width: 30.adaptSize),
                          CustomImageView(
                            color: Colors.red,
                              svgPath: ImageConstant.imgLiky,
                              height: 36.adaptSize,
                              width: 42.adaptSize),
                          CustomImageView(
                              svgPath: ImageConstant.imgStar,
                              height: 30.adaptSize,
                              width: 30.adaptSize)
                        ])
                  ]))),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xF3F3F3),
        iconSize: 24,
        showUnselectedLabels: true,
        elevation: 10,
        unselectedItemColor: Colors.grey,
        selectedItemColor: theme.colorScheme.primary,
        selectedIconTheme: IconThemeData( color: theme.colorScheme.primary),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(ImageConstant.imgCardsPNG, color: theme.colorScheme.primary, width: 30.adaptSize, height: 30.adaptSize),

            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageConstant.imgLike, color: theme.colorScheme.primary, width: 30.adaptSize, height: 30.adaptSize),
            label: 'Likes',
           // backgroundColor: Color(0xF3F3F3)
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageConstant.imgMessage, color: theme.colorScheme.primary, width: 30.adaptSize, height: 30.adaptSize),
            label: 'Swiped',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageConstant.imgPerson, color: theme.colorScheme.primary,  width: 30.adaptSize, height: 30.adaptSize),
            label: 'Profile',
          ),
        ],
      ),
    );
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
    Navigator.pushNamed(context, AppRoutes.swipeLeftScreen);
  }

  goToFilters(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filtersPage);
  }
}
