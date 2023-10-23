import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_icon_button.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 429.v,
                          width: 310.h,
                          margin: EdgeInsets.only(left: 24.h, top: 27.v),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                    height: 403.v,
                                    width: 294.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPhoto264x199,
                                              height: 264.v,
                                              width: 199.h,
                                              radius:
                                                  BorderRadius.circular(15.h),
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(top: 25.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPhoto1,
                                              height: 264.v,
                                              width: 199.h,
                                              radius:
                                                  BorderRadius.circular(15.h),
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  bottom: 22.v)),
                                          CustomIconButton(
                                              height: 69.adaptSize,
                                              width: 69.adaptSize,
                                              padding: EdgeInsets.all(16.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineBlack,
                                              alignment: Alignment.topCenter,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavoritePrimary)),
                                          CustomIconButton(
                                              height: 69.adaptSize,
                                              width: 69.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 16.h),
                                              padding: EdgeInsets.all(16.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineBlack,
                                              alignment: Alignment.bottomLeft,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFavoritePrimary69x69))
                                        ]))),
                            CustomAppBar(
                                height: 52.v,
                                leadingWidth: double.maxFinite,
                                leading: AppbarIconbutton(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: EdgeInsets.only(
                                        left: 24.h, right: 299.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }))
                          ])),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.h, vertical: 28.v),
                          child: Column(children: [
                            Text("msg_it_s_a_match_jake".tr,
                                style: theme.textTheme.displaySmall),
                            SizedBox(height: 4.v),
                            Text("msg_start_a_conversation".tr,
                                style: CustomTextStyles.bodyMediumBlack900_1),
                            SizedBox(height: 84.v),
                            CustomElevatedButton(text: "lbl_say_hello".tr),
                            SizedBox(height: 20.v),
                            CustomElevatedButton(
                                text: "lbl_keep_swiping".tr,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumPrimary),
                            SizedBox(height: 5.v)
                          ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
