import '../matches_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hlove/widgets/app_bar/appbar_title.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_icon_button.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 75.v,
                leadingWidth: 76.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24.h, bottom: 23.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_matches".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgVolume,
                      margin:
                          EdgeInsets.only(left: 34.h, top: 23.v, right: 40.h))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_this_is_a_list_of".tr,
                                  style: CustomTextStyles.bodyLargeBlack900_1),
                              SizedBox(height: 47.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 121.h, child: Divider())),
                                    Text("lbl_today".tr,
                                        style: CustomTextStyles
                                            .bodySmallBlack900_1),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 121.h, child: Divider()))
                                  ]),
                              SizedBox(height: 9.v),
                              GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: 201.v,
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 15.h,
                                          crossAxisSpacing: 15.h),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return UserprofileItemWidget();
                                  }),
                              SizedBox(height: 19.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 110.h, child: Divider())),
                                    Text("lbl_yesterday".tr,
                                        style: theme.textTheme.bodySmall),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 7.v),
                                        child: SizedBox(
                                            width: 110.h, child: Divider()))
                                  ]),
                              SizedBox(height: 9.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        height: 200.v,
                                        width: 140.h,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto8,
                                                  height: 200.v,
                                                  width: 140.h,
                                                  radius: BorderRadius.circular(
                                                      15.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15.h),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack900,
                                                            child: Text(
                                                                "lbl_kyle_24"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        SizedBox(height: 5.v),
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            color: appTheme
                                                                .black900,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderBL15),
                                                            child: Container(
                                                                height: 40.v,
                                                                width: 140.h,
                                                                decoration: AppDecoration
                                                                    .fillBlack
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL15),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgPhoto9,
                                                                          height: 40
                                                                              .v,
                                                                          width: 140
                                                                              .h,
                                                                          radius:
                                                                              BorderRadius.vertical(bottom: Radius.circular(15.h)),
                                                                          alignment: Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Container(
                                                                              width: 92.h,
                                                                              margin: EdgeInsets.symmetric(horizontal: 24.h),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgCloseOnprimary, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)),
                                                                                Opacity(opacity: 0.5, child: SizedBox(height: 40.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.onPrimary))),
                                                                                CustomImageView(svgPath: ImageConstant.imgVector, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))
                                                                              ])))
                                                                    ])))
                                                      ]))
                                            ])),
                                    SizedBox(
                                        height: 200.v,
                                        width: 140.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto10,
                                                  height: 200.v,
                                                  width: 140.h,
                                                  radius: BorderRadius.circular(
                                                      15.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height:
                                                                46.adaptSize,
                                                            width: 46.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 4.h),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    11.h),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .outlineBlackTL23,
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavoritePrimary)),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15.h,
                                                                    top: 83.v),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack900,
                                                            child: Text(
                                                                "lbl_kyle_24"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        SizedBox(height: 5.v),
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            color: appTheme
                                                                .black900,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderBL15),
                                                            child: Container(
                                                                height: 40.v,
                                                                width: 140.h,
                                                                decoration: AppDecoration
                                                                    .fillBlack
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL15),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgPhoto9,
                                                                          height: 40
                                                                              .v,
                                                                          width: 140
                                                                              .h,
                                                                          radius:
                                                                              BorderRadius.vertical(bottom: Radius.circular(15.h)),
                                                                          alignment: Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Container(
                                                                              width: 92.h,
                                                                              margin: EdgeInsets.symmetric(horizontal: 24.h),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgCloseOnprimary, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)),
                                                                                Opacity(opacity: 0.5, child: SizedBox(height: 40.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.onPrimary))),
                                                                                CustomImageView(svgPath: ImageConstant.imgVector, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))
                                                                              ])))
                                                                    ])))
                                                      ]))
                                            ]))
                                  ])
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
