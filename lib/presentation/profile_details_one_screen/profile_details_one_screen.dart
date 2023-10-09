import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';
import 'package:kenny_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileDetailsOneScreen extends StatelessWidget {
  ProfileDetailsOneScreen({Key? key}) : super(key: key);

  TextEditingController nameoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 48.v),
                      Text("msg_enter_profile_details".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 92.v),
                      SizedBox(
                          height: 106.v,
                          width: 101.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPhoto,
                                    height: 99.adaptSize,
                                    width: 99.adaptSize,
                                    radius: BorderRadius.circular(25.h),
                                    alignment: Alignment.topCenter),
                                CustomIconButton(
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    decoration:
                                        IconButtonStyleHelper.outlineOnPrimary,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera))
                              ])),
                      SizedBox(height: 39.v),
                      SizedBox(
                          height: 64.v,
                          width: 295.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: nameoneController,
                                hintText: "lbl_francis".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_first_name".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 7.v),
                      SizedBox(
                          height: 64.v,
                          width: 295.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 2.v),
                                          Text("lbl_mkenya".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_last_name".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 10.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 19.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: 20.v,
                                width: 18.h),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h, top: 2.v),
                                child: Text("msg_choose_birthday".tr,
                                    style: CustomTextStyles.titleSmallPrimary))
                          ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapConfirm(context);
                })));
  }

  /// Navigates to the calendarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the calendarScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarScreen);
  }
}
