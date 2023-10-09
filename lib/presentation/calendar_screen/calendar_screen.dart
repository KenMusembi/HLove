import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgCalendar812x375),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        decoration: AppDecoration.fillBlack,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.h, vertical: 48.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup45),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 11.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBlack900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 43.v, bottom: 11.v)),
                                              Column(children: [
                                                Text("lbl_birthday".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                Container(
                                                    decoration: AppDecoration
                                                        .outlinePrimary,
                                                    child: Text("lbl_1985".tr,
                                                        style: CustomTextStyles
                                                            .displaySmallPrimary)),
                                                SizedBox(height: 3.v),
                                                Text("lbl_july".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumPrimary)
                                              ]),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlack900,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 43.v, bottom: 11.v))
                                            ]),
                                        SizedBox(height: 17.v),
                                        SizedBox(
                                            height: 201.v,
                                            width: 295.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOval1line,
                                                      height: 43.v,
                                                      width: 295.h,
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 13.h,
                                                                  right: 11.h),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 5
                                                                            .h),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_1".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_2".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_3".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_4".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_5".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_6".tr,
                                                                              style: theme.textTheme.bodyMedium),
                                                                          Text(
                                                                              "lbl_7".tr,
                                                                              style: theme.textTheme.bodyMedium)
                                                                        ])),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            3.h,
                                                                        top: 12
                                                                            .v),
                                                                    child: Row(
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_8".tr, style: theme.textTheme.bodyMedium)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 33.h, top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_9".tr, style: theme.textTheme.bodyMedium)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 30.h, top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_10".tr, style: theme.textTheme.bodyMedium)),
                                                                          Container(
                                                                              margin: EdgeInsets.only(left: 11.h),
                                                                              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v),
                                                                              decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder21),
                                                                              child: Text("lbl_11".tr, style: CustomTextStyles.titleSmallOnPrimary)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 13.h, top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_12".tr, style: theme.textTheme.bodyMedium)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 25.h, top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_13".tr, style: theme.textTheme.bodyMedium)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 25.h, top: 13.v, bottom: 12.v),
                                                                              child: Text("lbl_14".tr, style: theme.textTheme.bodyMedium))
                                                                        ])),
                                                                SizedBox(
                                                                    height:
                                                                        13.v),
                                                                Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_15"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_16"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_17"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_18"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_19"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_20"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_21"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium)
                                                                    ]),
                                                                SizedBox(
                                                                    height:
                                                                        24.v),
                                                                Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_22"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_23"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_24"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_25"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_26"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_27"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium),
                                                                      Text(
                                                                          "lbl_28"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium)
                                                                    ]),
                                                                SizedBox(
                                                                    height:
                                                                        25.v),
                                                                Row(children: [
                                                                  Text(
                                                                      "lbl_29"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 24
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_30"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium)),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 26
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_31"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyMedium))
                                                                ])
                                                              ])))
                                                ])),
                                        SizedBox(height: 52.v),
                                        CustomElevatedButton(
                                            text: "lbl_save".tr,
                                            onTap: () {
                                              onTapSave(context);
                                            })
                                      ]))),
                          CustomImageView(
                              svgPath: ImageConstant.imgLightbulb,
                              height: 12.v,
                              width: 27.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 295.v))
                        ]))))));
  }

  /// Navigates to the iAmScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iAmScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iAmScreen);
  }
}
