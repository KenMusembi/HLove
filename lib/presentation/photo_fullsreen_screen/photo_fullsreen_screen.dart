import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';

class PhotoFullsreenScreen extends StatelessWidget {
  const PhotoFullsreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 52.adaptSize,
                          width: 52.adaptSize,
                          margin: EdgeInsets.only(left: 40.h, top: 28.v),
                          padding: EdgeInsets.all(14.h),
                          onTap: () {
                            onTapBtnArrowleftone(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      SizedBox(height: 24.v),
                      CustomImageView(
                          imagePath: ImageConstant.img4,
                          height: 562.v,
                          width: 375.h)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 59.h, right: 59.h, bottom: 50.v),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoto64x64,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      radius: BorderRadius.circular(10.h)),
                  Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPhoto54x54,
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          radius: BorderRadius.circular(10.h),
                          margin: EdgeInsets.only(
                              left: 11.h, top: 5.v, bottom: 5.v))),
                  Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPhoto29,
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          radius: BorderRadius.circular(10.h),
                          margin: EdgeInsets.only(
                              left: 10.h, top: 5.v, bottom: 5.v))),
                  Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPhoto30,
                          height: 54.adaptSize,
                          width: 54.adaptSize,
                          radius: BorderRadius.circular(10.h),
                          margin: EdgeInsets.only(
                              left: 10.h, top: 5.v, bottom: 5.v)))
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
