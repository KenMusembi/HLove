import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/presentation/main_page/main_page.dart';
import 'package:hlove/presentation/matches_page/matches_page.dart';
import 'package:hlove/widgets/custom_bottom_bar.dart';

class SwipeLeftScreen extends StatelessWidget {
  SwipeLeftScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup141,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 730.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 91.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto511x360,
                  height: 511.v,
                  width: 360.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 9.v),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 42.h,
                      vertical: 197.v,
                    ),
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 18.v),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder49,
                          ),
                          child: Container(
                            height: 97.adaptSize,
                            width: 97.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder49,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgAirplane,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(
                      right: 14.h,
                      bottom: 27.v,
                    ),
                    color: appTheme.black900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBL15,
                    ),
                    child: Container(
                      height: 156.v,
                      width: 306.h,
                      decoration: AppDecoration.fillBlack.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL15,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPhoto156x306,
                            height: 156.v,
                            width: 306.h,
                            radius: BorderRadius.vertical(
                              bottom: Radius.circular(15.h),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL15,
                              ),
                              child: Container(
                                height: 156.v,
                                width: 306.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17.h,
                                  vertical: 20.v,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 235.h,
                                        child: Text(
                                          "msg_samuel_odhiambo".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .headlineSmallOnPrimary
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        width: 73.h,
                                        margin: EdgeInsets.only(
                                          left: 9.h,
                                          bottom: 4.v,
                                        ),
                                        child: Text(
                                          "lbl_accountant".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimary
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 520.v,
                    width: 360.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto511x360,
                          height: 511.v,
                          width: 360.h,
                          radius: BorderRadius.circular(
                            15.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 42.h,
                              vertical: 197.v,
                            ),
                            decoration: AppDecoration.fillBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 18.v),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder49,
                                  ),
                                  child: Container(
                                    height: 97.adaptSize,
                                    width: 97.adaptSize,
                                    padding: EdgeInsets.all(1.h),
                                    decoration:
                                        AppDecoration.outlineBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder49,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgFavorite,
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgAirplane,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.black900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderBL15,
                            ),
                            child: Container(
                              height: 156.v,
                              width: 306.h,
                              decoration: AppDecoration.fillBlack.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL15,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPhoto156x306,
                                    height: 156.v,
                                    width: 306.h,
                                    radius: BorderRadius.vertical(
                                      bottom: Radius.circular(15.h),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderBL15,
                                      ),
                                      child: Container(
                                        height: 156.v,
                                        width: 306.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.h,
                                          vertical: 20.v,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL15,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 235.h,
                                                child: Text(
                                                  "msg_samuel_odhiambo".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .headlineSmallOnPrimary
                                                      .copyWith(
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                width: 73.h,
                                                margin: EdgeInsets.only(
                                                  left: 9.h,
                                                  bottom: 4.v,
                                                ),
                                                child: Text(
                                                  "lbl_accountant".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumOnPrimary
                                                      .copyWith(
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Cards:
        return AppRoutes.mainPage;
      case BottomBarEnum.Computer:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Menu:
        return "/";
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
      default:
        return DefaultWidget();
    }
  }
}
