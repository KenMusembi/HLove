import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 63.v,
                leadingWidth: 72.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 20.h, bottom: 11.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_skip".tr,
                      margin:
                          EdgeInsets.only(left: 42.h, top: 43.v, right: 42.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgJoecalih1uwcoottjyunsplash,
                      height: 336.v,
                      width: 375.h),
                  SizedBox(height: 32.v),
                  Text("msg_turn_on_location".tr,
                      style: CustomTextStyles.headlineSmallBold),
                  Container(
                      width: 278.h,
                      margin: EdgeInsets.fromLTRB(48.h, 15.v, 48.h, 5.v),
                      child: Text("msg_turn_on_location2".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900_1
                              .copyWith(height: 1.50)))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_see_where_i_m_at".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapSeewhereimat(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInScreen.
  onTapSeewhereimat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
