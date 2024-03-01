import '../matches_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hlove/widgets/app_bar/appbar_title.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:hlove/presentation/admirers_page/admirers_page.dart';
import 'package:hlove/presentation/interests_page/interests_page.dart';
import 'package:hlove/presentation/profile_screen/profile_screen.dart';
import 'package:hlove/presentation/matches_page/matches_page.dart';
import 'package:hlove/presentation/main_page/main_page.dart';
import 'package:hlove/widgets/custom_bottom_bar.dart';

class Item {
  String text;
  String imageUrl;
  bool isSelected;

  Item({required this.text, required this.imageUrl, this.isSelected = false});
}

class InterestsPage extends StatefulWidget {
  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<Item> _items = [
    Item(text: 'Stacy', imageUrl: 'assets/images/img_photo_200x140.png'),
    Item(text: 'Anne', imageUrl: 'assets/images/img_photo_64x64.png'),
    Item(text: 'Lisa', imageUrl: 'assets/images/img_photo_167x93.png'),
    Item(text: 'Emily', imageUrl: 'assets/images/img_photo_450x231.png'),
    // Item(text: 'Jenny', imageUrl: 'assets/images/img_photo_200x140.png, closeImage: 'assets/images/img_close_onprimary.png', likeImage: 'assets/images/img_vector.png')'),
    // Item(text: 'Penny', imageUrl: 'assets/images/img_photo_64x64.png, closeImage: 'assets/images/img_close_onprimary.png', likeImage: 'assets/images/img_vector.png')'),
    // Item(text: 'Leah', imageUrl: 'assets/images/img_photo_167x93.png, closeImage: 'assets/images/img_close_onprimary.png', likeImage: 'assets/images/img_vector.png')'),
    // Item(text: 'Eunice', imageUrl: 'assets/images/img_photo_450x231.png, closeImage: 'assets/images/img_close_onprimary.png', likeImage: 'assets/images/img_vector.png')'),
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 75.v,
                leadingWidth: 76.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24.h, bottom: 23.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_interests".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgVolume,
                      margin:
                          EdgeInsets.only(left: 34.h, top: 23.v, right: 40.h))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_list_of_interests".tr,
                                  style: CustomTextStyles.bodyLargeBlack900_1),
                              SizedBox(height: 47.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 121.h, child: Divider())),
                                    Text("lbl_today".tr,
                                        style: CustomTextStyles
                                            .bodySmallBlack900_1),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 121.h, child: Divider()))
                                  ]),
                              SizedBox(height: 9.v),
                              GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 201.v,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 15.h,
                                      crossAxisSpacing: 15.h),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    final item = _items[index];
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            item.isSelected = !item.isSelected;
                                          });
                                        },
                                        child:
                                        SizedBox(
                                          height: 200.v,
                                          width: 140.h,
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                item.imageUrl,
                                                height: 200.v,
                                                width: 140.h,
                                                radius: BorderRadius.circular(
                                                  15.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      decoration: AppDecoration
                                                          .outlineBlack900,
                                                      child: Text(
                                                        item.text,
                                                        style: theme
                                                            .textTheme.titleMedium,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4.v),
                                                    Card(
                                                      clipBehavior: Clip.antiAlias,
                                                      elevation: 0,
                                                      color: appTheme.black900,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL15,
                                                      ),
                                                      child: Container(
                                                        height: 40.v,
                                                        width: 140.h,
                                                        decoration: AppDecoration
                                                            .fillBlack
                                                            .copyWith(
                                                          borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL15,
                                                        ),
                                                        child: Stack(
                                                          alignment:
                                                          Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgPhoto40x140,
                                                              height: 40.v,
                                                              width: 140.h,
                                                              radius: BorderRadius
                                                                  .vertical(
                                                                bottom:
                                                                Radius.circular(
                                                                    15.h),
                                                              ),
                                                              alignment:
                                                              Alignment.center,
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                    24.h),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgCloseOnprimary,
                                                                      height: 20
                                                                          .adaptSize,
                                                                      width: 20
                                                                          .adaptSize,
                                                                      margin: EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                          10.v),
                                                                    ),
                                                                    Opacity(
                                                                      opacity: 0.5,
                                                                      child:
                                                                      SizedBox(
                                                                        height:
                                                                        40.v,
                                                                        child:
                                                                        VerticalDivider(
                                                                          width:
                                                                          1.h,
                                                                          thickness:
                                                                          1.v,
                                                                          color: theme
                                                                              .colorScheme
                                                                              .onPrimary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgVector,
                                                                      height: 20
                                                                          .adaptSize,
                                                                      width: 20
                                                                          .adaptSize,
                                                                      margin: EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                          10.v),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                              SizedBox(height: 19.v),
                              //showing date this was liked
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 110.h, child: Divider())),
                                    Text("lbl_yesterday".tr,
                                        style: theme.textTheme.bodySmall),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 110.h, child: Divider()))
                                  ]),
                              SizedBox(height: 9.v),
                              GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 201.v,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 15.h,
                                      crossAxisSpacing: 15.h),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    final item = _items[index];
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            item.isSelected = !item.isSelected;
                                          });
                                        },
                                        child:
                                        SizedBox(
                                          height: 200.v,
                                          width: 140.h,
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                item.imageUrl,
                                                height: 200.v,
                                                width: 140.h,
                                                radius: BorderRadius.circular(
                                                  15.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      decoration: AppDecoration
                                                          .outlineBlack900,
                                                      child: Text(
                                                        item.text,
                                                        style: theme
                                                            .textTheme.titleMedium,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4.v),
                                                    Card(
                                                      clipBehavior: Clip.antiAlias,
                                                      elevation: 0,
                                                      color: appTheme.black900,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL15,
                                                      ),
                                                      child: Container(
                                                        height: 40.v,
                                                        width: 140.h,
                                                        decoration: AppDecoration
                                                            .fillBlack
                                                            .copyWith(
                                                          borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL15,
                                                        ),
                                                        child: Stack(
                                                          alignment:
                                                          Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgPhoto40x140,
                                                              height: 40.v,
                                                              width: 140.h,
                                                              radius: BorderRadius
                                                                  .vertical(
                                                                bottom:
                                                                Radius.circular(
                                                                    15.h),
                                                              ),
                                                              alignment:
                                                              Alignment.center,
                                                            ),
                                                            Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                    24.h),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgCloseOnprimary,
                                                                      height: 20
                                                                          .adaptSize,
                                                                      width: 20
                                                                          .adaptSize,
                                                                      margin: EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                          10.v),
                                                                    ),
                                                                    Opacity(
                                                                      opacity: 0.5,
                                                                      child:
                                                                      SizedBox(
                                                                        height:
                                                                        40.v,
                                                                        child:
                                                                        VerticalDivider(
                                                                          width:
                                                                          1.h,
                                                                          thickness:
                                                                          1.v,
                                                                          color: theme
                                                                              .colorScheme
                                                                              .onPrimary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                      ImageConstant
                                                                          .imgVector,
                                                                      height: 20
                                                                          .adaptSize,
                                                                      width: 20
                                                                          .adaptSize,
                                                                      margin: EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                          10.v),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                            ])))),
            bottomNavigationBar: CustomBottomBar(
            onChanged: (BottomBarEnum type) {
    Navigator.pushNamed(context, getCurrentRoute(type));
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
