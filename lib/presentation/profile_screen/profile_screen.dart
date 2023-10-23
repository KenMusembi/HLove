import '../profile_screen/widgets/chipviewthree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 360.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 259.v,
                          width: 360.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                        height: 210.v,
                                        width: 360.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto210x360,
                                                  height: 210.v,
                                                  width: 360.h,
                                                  alignment: Alignment.center),
                                              CustomIconButton(
                                                  height: 52.adaptSize,
                                                  width: 52.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 40.h, top: 44.v),
                                                  padding: EdgeInsets.all(14.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlineGrayTL15,
                                                  alignment: Alignment.topLeft,
                                                  onTap: () {
                                                    onTapBtnArrowleftone(
                                                        context);
                                                  },
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleftOnprimary))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCloseYellow900,
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
                                        ]))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 48.h, top: 21.v, right: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("msg_jacinta_mwidowo".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallBold),
                                              SizedBox(height: 4.v),
                                              Text("lbl_cateress".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack900_1)
                                            ]))),
                                CustomIconButton(
                                    height: 52.adaptSize,
                                    width: 52.adaptSize,
                                    margin: EdgeInsets.only(left: 15.h),
                                    padding: EdgeInsets.all(14.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSend))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 50.h, top: 15.v, right: 15.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_location".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900),
                                          SizedBox(height: 10.v),
                                          Text("msg_kutus_near_kutus".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900_1)
                                        ])),
                                CustomElevatedButton(
                                    height: 34.v,
                                    width: 61.h,
                                    text: "lbl_6_km".tr,
                                    margin: EdgeInsets.only(
                                        left: 29.h, bottom: 15.v),
                                    leftIcon: Container(
                                        margin: EdgeInsets.only(right: 2.h),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationPrimary14x14)),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL7,
                                    buttonTextStyle:
                                        theme.textTheme.labelLarge!)
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 49.h, top: 16.v),
                              child: Text("lbl_about".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack900))),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 277.h,
                              child: ReadMoreText("msg_my_name_is_jacinta".tr,
                                  trimLines: 4,
                                  colorClickableText: theme.colorScheme.primary,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "lbl_read_more".tr,
                                  moreStyle: CustomTextStyles
                                      .bodyMediumBlack900_1
                                      .copyWith(height: 1.50),
                                  lessStyle: CustomTextStyles
                                      .bodyMediumBlack900_1
                                      .copyWith(height: 1.50)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 42.h, top: 25.v),
                              child: Text("lbl_interests".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack900))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 11.v, right: 23.h, bottom: 5.v),
                          child: Wrap(
                              runSpacing: 10.v,
                              spacing: 10.h,
                              children: List<Widget>.generate(
                                  3, (index) => ChipviewthreeItemWidget())))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
