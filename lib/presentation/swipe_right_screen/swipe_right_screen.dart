import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/presentation/main_page/main_page.dart';
import 'package:kenny_s_application1/presentation/matches_page/matches_page.dart';
import 'package:kenny_s_application1/presentation/messages_page/messages_page.dart';
import 'package:kenny_s_application1/widgets/custom_bottom_bar.dart';

class SwipeRightScreen extends StatelessWidget {
  SwipeRightScreen({Key? key})
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
                ImageConstant.imgGroup223,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 730.v,
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 98.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 511.v,
                    width: 293.h,
                    margin: EdgeInsets.only(top: 2.v),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto511x293,
                          height: 511.v,
                          width: 293.h,
                          radius: BorderRadius.circular(
                            15.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                              ),
                              SizedBox(height: 49.v),
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                color: appTheme.black900,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15,
                                ),
                                child: Container(
                                  height: 156.v,
                                  width: 293.h,
                                  decoration: AppDecoration.fillBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL15,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPhoto156x293,
                                        height: 156.v,
                                        width: 293.h,
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
                                          color: theme.colorScheme.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL15,
                                          ),
                                          child: Container(
                                            height: 156.v,
                                            width: 293.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 22.h,
                                              vertical: 13.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL15,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 204.h,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Text(
                                                      "msg_salome_mundia_29".tr,
                                                      maxLines: 2,
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
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 57.h,
                                                    margin: EdgeInsets.only(
                                                        top: 34.v),
                                                    child: Text(
                                                      "lbl_marketer".tr,
                                                      maxLines: 1,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBgcolor,
                    height: 511.v,
                    width: 289.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.topRight,
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
