import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

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
            body: Container(
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
                          imagePath: ImageConstant.imgGirl21,
                          height: 360.v,
                          width: 235.h,
                          radius: BorderRadius.circular(15.h)),
                      SizedBox(height: 47.v),
                      Text("msg_free_but_premium".tr,
                          style: CustomTextStyles.headlineSmallPrimary),
                      Container(
                          width: 241.h,
                          margin: EdgeInsets.only(
                              left: 26.h, top: 15.v, right: 26.h),
                          child: Text("msg_sign_up_today_and".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 27.v),
                      SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: 2,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: appTheme.black900,
                                  dotHeight: 8.v,
                                  dotWidth: 8.h))),
                      SizedBox(height: 42.v),
                      CustomElevatedButton(
                          text: "lbl_sign_up".tr,
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
                                    onTapSignUp(context);
                                  },
                                style: CustomTextStyles.titleSmallPrimary_1),
                            TextSpan(
                                text: " or".tr,
                                style: CustomTextStyles.bodyMediumBlack900),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    onTapSignUp(context);
                                  },
                                style: CustomTextStyles.titleSmallPrimary_1)
                          ]),
                          textAlign: TextAlign.left)
                    ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signUpScreen.
  onTapDownloadhlove(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
