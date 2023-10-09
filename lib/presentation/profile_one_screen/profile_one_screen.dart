import '../profile_one_screen/widgets/chipviewthree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class ProfileOneScreen extends StatelessWidget {
  const ProfileOneScreen({Key? key}) : super(key: key);

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
                                            imagePath:
                                                ImageConstant.imgPhoto415x375,
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
                                        Row(children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_jacinta_mwidowo"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .headlineSmallBold),
                                                        SizedBox(height: 4.v),
                                                        Text("lbl_cateress".tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack900_2)
                                                      ]))),
                                          CustomIconButton(
                                              height: 52.adaptSize,
                                              width: 52.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 15.h),
                                              padding: EdgeInsets.all(14.h),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSend))
                                        ]),
                                        SizedBox(height: 31.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_location".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumBlack900),
                                                        SizedBox(height: 10.v),
                                                        Text(
                                                            "msg_kutus_near_kutus"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack900_2)
                                                      ])),
                                              CustomElevatedButton(
                                                  height: 34.v,
                                                  width: 61.h,
                                                  text: "lbl_1_km".tr,
                                                  margin: EdgeInsets.only(
                                                      bottom: 15.v),
                                                  leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 2.h),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocationPrimary14x14)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargePrimary)
                                            ]),
                                        SizedBox(height: 32.v),
                                        Text("lbl_about".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 14.v),
                                        SizedBox(
                                            width: 277.h,
                                            child: ReadMoreText(
                                                "msg_my_name_is_jacinta".tr,
                                                trimLines: 4,
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
                                        SizedBox(height: 17.v),
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
                                                    ChipviewthreeItemWidget())),
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
                                                  imagePath: ImageConstant
                                                      .imgPhoto190x142,
                                                  height: 190.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto190x143,
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
                                                  imagePath: ImageConstant
                                                      .imgPhoto122x92,
                                                  height: 122.v,
                                                  width: 92.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto122x91,
                                                  height: 122.v,
                                                  width: 91.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto22,
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
