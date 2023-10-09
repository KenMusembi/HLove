import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 59.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("lbl_skip".tr,
                          style: CustomTextStyles.titleMediumPrimary)),
                  SizedBox(height: 88.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgChat,
                      height: 240.adaptSize,
                      width: 240.adaptSize),
                  SizedBox(height: 67.v),
                  Text("msg_enable_notification_s".tr,
                      style: CustomTextStyles.headlineSmallBold),
                  Container(
                      width: 282.h,
                      margin: EdgeInsets.fromLTRB(4.h, 15.v, 4.h, 5.v),
                      child: Text("msg_get_push_notification".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900_2
                              .copyWith(height: 1.50)))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_i_want_to_be_notified".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapIwanttobe(context);
                })));
  }

  /// Navigates to the mainContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mainContainerScreen.
  onTapIwanttobe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainContainerScreen);
  }
}
