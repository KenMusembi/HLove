import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_checkbox_button.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class IAmScreen extends StatelessWidget {
  IAmScreen({Key? key}) : super(key: key);

  bool femalevalue = false;

  bool malevalue = false;

  bool nonBinary = false;

  bool preferNotToSay = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 72.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 20.h, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_continue".tr,
                      margin:
                          EdgeInsets.only(left: 17.h, top: 36.v, right: 17.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 55.v),
                child: SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(
            //minHeight: viewportConstraints.maxHeight,
            ),
               child: Column(children: [
                  Text("msg_indicate_your_gender".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 95.v),
                  // ElevatedButton(
                  //   style:  ElevatedButton.styleFrom(
                  //     primary: Colors.pink,
                  //   // Colors.pink,
                  //   textStyle: const TextStyle(
                  //       color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal)
                  //   ),
                  //  onPressed: () {
                  //    showCustomSnackbar(
                  //        context, "Female chosen");
                  //  }, child: Text("Female"),
                  // ),
                  CustomCheckboxButton(
                      width: 295.h,
                      text: "lbl_female".tr,
                      value: femalevalue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      textStyle: CustomTextStyles.bodyLargeBlack900,
                      isRightCheck: true,

                      onChange: (value) {
                        femalevalue = value;
                        showCustomSnackbar(
                                    context, "Female chosen");
                      }),
                  SizedBox(height: 10.v),
                  CustomCheckboxButton(
                      width: 295.h,
                      text: "lbl_male".tr,
                      value: malevalue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      decoration: CustomCheckBoxStyleHelper.fillIndigoA,
                      isRightCheck: true,
                      onChange: (value) {
                        malevalue = value;
                        showCustomSnackbar(
                            context, "Male chosen");
                      }),
                  SizedBox(height: 10.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      decoration: AppDecoration.outlineGray200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("lbl_transgender".tr,
                                    style:
                                        CustomTextStyles.bodyLargeOnPrimary)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightBlueGray200,
                                height: 20.adaptSize,
                                width: 20.adaptSize)
                          ])),
                  SizedBox(height: 10.v),
                  CustomCheckboxButton(
                      width: 295.h,
                      text: "lbl_non_binary".tr,
                      value: nonBinary,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      textStyle: CustomTextStyles.titleMediumBlack900,
                      decoration: CustomCheckBoxStyleHelper.fillOnPrimary,
                      isRightCheck: true,
                      onChange: (value) {
                        nonBinary = value;
                        showCustomSnackbar(
                            context, "Non-binary chosen");
                        print(nonBinary);
                      }),
                  SizedBox(height: 15.v),
                  CustomCheckboxButton(
                      width: 295.h,
                      text: "msg_prefer_not_to_say".tr,
                      value: preferNotToSay,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      decoration: CustomCheckBoxStyleHelper.fillBlack,
                      isRightCheck: true,
                      onChange: (value) {
                        preferNotToSay = value;
                        showCustomSnackbar(
                            context, "Prefer not to say chosen");
                      }),
                  SizedBox(height: 5.v)
                ])))),
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

  showCustomSnackbar(BuildContext context, String textString) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(textString, style: TextStyle(color: Colors.white)),
      backgroundColor: Color(0XFFE94057),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(50),
      elevation: 10,
      shape: StadiumBorder(),
      duration: Duration(seconds: 2),
    ));
  }
}
