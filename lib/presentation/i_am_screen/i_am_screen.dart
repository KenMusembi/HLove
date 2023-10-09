import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:kenny_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kenny_s_application1/widgets/custom_checkbox_button.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class IAmScreen extends StatelessWidget {
  IAmScreen({Key? key}) : super(key: key);

  bool womanvalue = false;

  bool manvalue = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 92.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 40.h, top: 2.v, bottom: 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.fromLTRB(17.h, 18.v, 17.h, 17.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_i_am_a".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 94.v),
                      CustomCheckboxButton(
                          width: 295.h,
                          text: "lbl_woman".tr,
                          value: womanvalue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 18.v),
                          isRightCheck: true,
                          onChange: (value) {
                            womanvalue = value;
                          }),
                      SizedBox(height: 10.v),
                      CustomCheckboxButton(
                          width: 295.h,
                          text: "lbl_man".tr,
                          value: manvalue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 18.v),
                          textStyle: theme.textTheme.titleMedium,
                          decoration: CustomCheckBoxStyleHelper.fillPrimary,
                          isRightCheck: true,
                          onChange: (value) {
                            manvalue = value;
                          }),
                      SizedBox(height: 10.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 18.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("msg_prefer_not_to_say".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBlack900)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray200,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize)
                              ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_continue2".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapContinue(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the passionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the passionsScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passionsScreen);
  }
}
