import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_pin_code_text_field.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(24.h, 2.v, 299.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_00_42".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 17.v),
                      SizedBox(
                          width: 205.h,
                          child: Text("msg_type_the_verification".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack90018
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 45.v),
                      CustomPinCodeTextField(
                          context: context, onChanged: (value) {}),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 17.h, top: 83.v, right: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_1".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_2".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_3".tr,
                                    style: theme.textTheme.headlineSmall)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, top: 31.v, right: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_4".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_5".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_6".tr,
                                    style: theme.textTheme.headlineSmall)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 17.h, top: 30.v, right: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_7".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_8".tr,
                                    style: theme.textTheme.headlineSmall),
                                Text("lbl_9".tr,
                                    style: theme.textTheme.headlineSmall)
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 31.v, right: 12.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("lbl_0".tr,
                                        style: theme.textTheme.headlineSmall),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: 17.v,
                                        width: 24.h,
                                        margin: EdgeInsets.only(
                                            top: 7.v, bottom: 3.v))
                                  ]))),
                      SizedBox(height: 75.v),
                      Text("lbl_send_again".tr,
                          style: CustomTextStyles.titleMediumPrimary),
                      SizedBox(height: 10, width: 0),
                      CustomElevatedButton(
                          text: "Submit".tr,
                          onTap: () {
                            onTapProfileDetails(context);
                          }),
                      SizedBox(height: 1.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProfileDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileDetailsScreen);
  }
}
