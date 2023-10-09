import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 59.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 42.h),
                          child: Text("lbl_skip".tr,
                              style: CustomTextStyles.titleMediumPrimary))),
                  SizedBox(height: 27.v),
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
                          style: CustomTextStyles.bodyMediumBlack900_2
                              .copyWith(height: 1.50)))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_see_where_i_m_at".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapSeewhereimat(context);
                })));
  }

  /// Navigates to the mainContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mainContainerScreen.
  onTapSeewhereimat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainContainerScreen);
  }
}
