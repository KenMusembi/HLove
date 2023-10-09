import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:kenny_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
                centerTitle: true,
                title: Column(children: [
                  AppbarSubtitle(text: "lbl_discover".tr),
                  AppbarSubtitle2(
                      text: "lbl_chicago_ii".tr,
                      margin: EdgeInsets.only(left: 18.h, right: 21.h))
                ]),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgSettings,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40.h, vertical: 2.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 22.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapContent(context);
                          },
                          child: SizedBox(
                              height: 466.v,
                              width: 295.h,
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPhoto450x231,
                                        height: 450.v,
                                        width: 231.h,
                                        radius: BorderRadius.circular(15.h),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 450.v,
                                            width: 295.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPhoto450x295,
                                                      height: 450.v,
                                                      width: 295.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              15.h),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomElevatedButton(
                                                                height: 34.v,
                                                                width: 61.h,
                                                                text: "lbl_1_km"
                                                                    .tr,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h),
                                                                leftIcon: Container(
                                                                    margin: EdgeInsets.only(
                                                                        right: 2
                                                                            .h),
                                                                    child: CustomImageView(
                                                                        svgPath: ImageConstant
                                                                            .imgLocation)),
                                                                buttonStyle:
                                                                    CustomButtonStyles
                                                                        .fillOnPrimary,
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .labelLargeOnPrimary),
                                                            SizedBox(
                                                                height: 92.v),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgOverflowmenu,
                                                                height: 76.v,
                                                                width: 20.h,
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            SizedBox(
                                                                height: 145.v),
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                color: appTheme
                                                                    .black900,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderBL15),
                                                                child:
                                                                    Container(
                                                                        height: 83
                                                                            .v,
                                                                        width: 295
                                                                            .h,
                                                                        decoration: AppDecoration.fillBlack.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderBL15),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgPhoto83x295, height: 83.v, width: 295.h, radius: BorderRadius.vertical(bottom: Radius.circular(15.h)), alignment: Alignment.center),
                                                                              Align(
                                                                                  alignment: Alignment.topLeft,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(left: 16.h, top: 11.v),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        Text("msg_esther_njeri_23".tr, style: CustomTextStyles.headlineSmallOnPrimary),
                                                                                        SizedBox(height: 3.v),
                                                                                        Text("lbl_peer_educator".tr, style: CustomTextStyles.bodyMediumOnPrimary)
                                                                                      ])))
                                                                            ])))
                                                          ]))
                                                ])))
                                  ]))),
                      SizedBox(height: 21.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCloseYellow900,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector,
                                height: 36.v,
                                width: 42.h),
                            CustomImageView(
                                svgPath: ImageConstant.imgStar,
                                height: 30.adaptSize,
                                width: 30.adaptSize)
                          ])
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the swipeRightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the swipeRightScreen.
  onTapContent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.swipeRightScreen);
  }
}
