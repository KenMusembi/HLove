import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

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
                      imagePath: ImageConstant.imgPeople,
                      height: 240.adaptSize,
                      width: 240.adaptSize),
                  SizedBox(height: 69.v),
                  Text("msg_update_profile_picture".tr,
                      style: CustomTextStyles.headlineSmallBold),
                  Container(
                      width: 276.h,
                      margin: EdgeInsets.fromLTRB(7.h, 13.v, 7.h, 5.v),
                      child: Text("msg_enable_access_to".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack900_2
                              .copyWith(height: 1.50)))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_access_to_camera".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapAccessto(context);
                })));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapAccessto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
