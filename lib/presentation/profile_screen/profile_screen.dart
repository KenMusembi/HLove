import '../profile_screen/widgets/chipviewthree2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1325.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: 415.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPhoto23,
                                            height: 415.v,
                                            width: 375.h,
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 52.adaptSize,
                                            width: 52.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 40.h, top: 44.v),
                                            padding: EdgeInsets.all(14.h),
                                            decoration: IconButtonStyleHelper
                                                .outlineGrayTL15,
                                            alignment: Alignment.topLeft,
                                            onTap: () {
                                              onTapBtnArrowleftone(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftOnprimary))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 39.h, vertical: 40.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 53.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_jackson_kamau_25"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .headlineSmallBold),
                                                        SizedBox(height: 5.v),
                                                        Text(
                                                            "lbl_photographer"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack900_2)
                                                      ])),
                                              CustomIconButton(
                                                  height: 52.adaptSize,
                                                  width: 52.adaptSize,
                                                  padding: EdgeInsets.all(14.h),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSend))
                                            ]),
                                        SizedBox(height: 30.v),
                                        SizedBox(
                                            height: 49.v,
                                            width: 295.h,
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  CustomElevatedButton(
                                                      height: 34.v,
                                                      width: 61.h,
                                                      text: "lbl_1_km".tr,
                                                      leftIcon: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 2.h),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgLocationPrimary14x14)),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillPrimaryTL7,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargePrimary,
                                                      alignment:
                                                          Alignment.topRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Text(
                                                          "msg_sagana_near_sagana2"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumBlack900_2)),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.v),
                                                          child: Text(
                                                              "lbl_location".tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumBlack900)))
                                                ])),
                                        SizedBox(height: 32.v),
                                        Text("lbl_about".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        SizedBox(
                                            width: 292.h,
                                            child: ReadMoreText(
                                                "msg_my_name_is_jackson".tr,
                                                trimLines: 3,
                                                colorClickableText:
                                                    theme.colorScheme.primary,
                                                trimMode: TrimMode.Line,
                                                trimCollapsedText:
                                                    "lbl_read_more".tr,
                                                moreStyle: CustomTextStyles
                                                    .bodyMediumBlack900_2
                                                    .copyWith(height: 1.50),
                                                lessStyle: CustomTextStyles
                                                    .bodyMediumBlack900_2
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 33.v),
                                        Text("lbl_interests".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 11.v),
                                        Wrap(
                                            runSpacing: 10.v,
                                            spacing: 10.h,
                                            children: List<Widget>.generate(
                                                3,
                                                (index) =>
                                                    Chipviewthree2ItemWidget())),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 33.v, right: 3.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_gallery".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900),
                                                  Text("lbl_see_all".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallPrimary)
                                                ])),
                                        SizedBox(height: 10.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto24,
                                                  height: 190.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto25,
                                                  height: 190.v,
                                                  width: 143.h,
                                                  radius: BorderRadius.circular(
                                                      5.h))
                                            ]),
                                        SizedBox(height: 10.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto26,
                                                  height: 122.v,
                                                  width: 92.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto27,
                                                  height: 122.v,
                                                  width: 91.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto28,
                                                  height: 122.v,
                                                  width: 92.h,
                                                  radius: BorderRadius.circular(
                                                      5.h))
                                            ])
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 337.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCloseYellow900,
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
                                      ])))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
