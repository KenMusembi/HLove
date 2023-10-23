import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(left: 46.h, top: 88.v, right: 46.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgChat,
                      height: 240.adaptSize,
                      width: 240.adaptSize),
                  SizedBox(height: 67.v),
                  Text("msg_enable_notification_s".tr,
                      style: CustomTextStyles.headlineSmallBold),
                  SizedBox(height: 15.v),
                  SizedBox(
                      width: 282.h,
                      child: Text("msg_get_push_notification".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900_1
                              .copyWith(height: 1.50))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_i_want_to_be_notified".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapIwanttobe(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the locationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the locationScreen.
  onTapIwanttobe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationScreen);
  }
}
