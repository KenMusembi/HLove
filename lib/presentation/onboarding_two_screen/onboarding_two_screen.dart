import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: double.maxFinite,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowright,
                margin: EdgeInsets.fromLTRB(300.h, 3.v, 8.h, 1.v),
                onTap: () {
                  onTapDownloadhlove(context);
                })),
            body: GestureDetector(
              onHorizontalDragStart: (details) => onTapDownloadhlove(context),
              onHorizontalDragEnd: (details) => onTapDownloadhlove(context),
              onTap: () {
                onTapDownloadhlove(context);
              },
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10.v),
                        CustomImageView(
                            onTap: () {
                              onTapDownloadhlove(context);
                            },
                            imagePath: ImageConstant.imgGirl2360x235,
                            height: 360.v,
                            width: 235.h,
                            radius: BorderRadius.circular(15.h)),
                        SizedBox(height: 47.v),
                        Text("lbl_matches".tr,
                            style: CustomTextStyles.headlineSmallPrimary),
                        Container(
                            width: 287.h,
                            margin:
                                EdgeInsets.only(left: 3.h, top: 15.v, right: 3.h),
                            child: Text("msg_we_match_you_with".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .bodyMediumOnPrimaryContainer
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 6.v),
                        SizedBox(
                            height: 8.v,
                            child: AnimatedSmoothIndicator(
                                activeIndex: 1,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                    spacing: 8,
                                    activeDotColor: theme.colorScheme.primary,
                                    dotColor: appTheme.black900,
                                    dotHeight: 8.v,
                                    dotWidth: 8.h))),
                        SizedBox(height: 42.v),
                        CustomElevatedButton(
                            text: "lbl_learn_more".tr,
                            onTap: () {
                              onTapDownloadhlove(context);
                            }),
                        SizedBox(height: 25.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_already_have_an2".tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              TextSpan(text: " "),
                              TextSpan(
                                  text: "lbl_sign_in".tr,
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      onTapSignIn(context);
                                    },
                                  style: CustomTextStyles.titleSmallPrimary_1)
                            ]),
                            textAlign: TextAlign.left)
                      ])),
            )));
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the onboardingThreeScreen.
  onTapDownloadhlove(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }

  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
