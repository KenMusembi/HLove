import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

class DateOfBirthScreen extends StatelessWidget {
  const DateOfBirthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(19.h, 2.v, 304.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("msg_fill_in_your_birthday".tr,
                          style: theme.textTheme.headlineLarge),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleftBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 43.v, bottom: 11.v)),
                            Column(children: [
                              Text("lbl_birthday".tr,
                                  style: theme.textTheme.bodyMedium),
                              Container(
                                  decoration: AppDecoration.outlinePrimary,
                                  child: Text("lbl_1985".tr,
                                      style: theme.textTheme.displaySmall)),
                              SizedBox(height: 3.v),
                              Text("lbl_july".tr,
                                  style: CustomTextStyles.bodyMediumPrimary)
                            ]),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 43.v, bottom: 11.v))
                          ]),
                      SizedBox(height: 28.v),
                      SizedBox(
                          height: 201.v,
                          width: 295.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgOval1line,
                                    height: 43.v,
                                    width: 295.h,
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, right: 11.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("lbl_1".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_2".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_3".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_4".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_5".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_6".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        Text("lbl_7".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3.h, top: 17.v),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_8".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 33.h,
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_9".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 30.h,
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_10".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 13.h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        10.h,
                                                                    vertical:
                                                                        12.v),
                                                            decoration: AppDecoration
                                                                .fillPrimary
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder21),
                                                            child: Text(
                                                                "lbl_11".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 11.h,
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_12".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 25.h,
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_13".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 25.h,
                                                                    top: 8.v,
                                                                    bottom:
                                                                        17.v),
                                                            child: Text(
                                                                "lbl_14".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium))
                                                      ])),
                                              SizedBox(height: 8.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_15".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_16".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_17".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_18".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_19".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_20".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_21".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium)
                                                  ]),
                                              SizedBox(height: 24.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_22".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_23".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_24".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_25".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_26".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_27".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    Text("lbl_28".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium)
                                                  ]),
                                              SizedBox(height: 25.v),
                                              Row(children: [
                                                Text("lbl_29".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 24.h),
                                                    child: Text("lbl_30".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 26.h),
                                                    child: Text("lbl_31".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium))
                                              ])
                                            ])))
                              ])),
                      SizedBox(height: 56.v),
                      CustomElevatedButton(
                          text: "lbl_save".tr,
                          onTap: () {
                            onTapSave(context);
                          }),
                      SizedBox(height: 2.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the profileDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the profileDetailsScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileDetailsScreen);
  }
}
