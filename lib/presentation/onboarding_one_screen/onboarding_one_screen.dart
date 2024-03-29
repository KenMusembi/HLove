import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/app_bar/appbar_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

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
              onVerticalDragStart: (details) => onTapDownloadhlove(context),
              onVerticalDragEnd: (details) => onTapDownloadhlove(context),
              onTap: () {
                onTapDownloadhlove(context);
              },
              // onPanUpdate: (context) {
              //   if (context.delta.dx > 0) {
              //     //User swiped from left to right
              //     _onHorizontalDrag(context);
              //   } else if (context.delta.dx < 0) {
              //     //User swiped from right to left
              //     _onHorizontalDrag(context);
              //   }
              // },
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      // CustomImageView(
                      //   imagePath: ImageConstant.imgArrowright,
                      //   height: 15,
                      //   width: 10,
                      // ),
                      CustomImageView(
                        onTap: () {
                          onTapDownloadhlove(context);
                        },
                        imagePath: ImageConstant.imgGirl2,
                        height: 360.v,
                        width: 235.h,
                        radius: BorderRadius.circular(15.h),
                      ),
                      SizedBox(height: 47.v),
                      Text("lbl_hlove".tr,
                          style: CustomTextStyles.headlineSmallPrimary),
                      Container(
                          width: 267.h,
                          margin: EdgeInsets.only(
                              left: 14.h, top: 15.v, right: 13.h),
                          child: Text("msg_introducing_hlove".tr,
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
                              activeIndex: 0,
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
                    ]),
              ),
            )));
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the onboardingTwoScreen.
  _onHorizontalDrag(details) {
    if (details.primaryVelocity == 0)
      //onTapDownloadhlove(details as BuildContext);
      print('just tapped'); // user have just tapped on screen (no dragging)

    if (details.primaryVelocity!.compareTo(0) == -1)
      print('dragged from left');
    else
      print('dragged from right');
  }

  onTapDownloadhlove(context) {
    Navigator.pushNamed(context, AppRoutes.onboardingTwoScreen);
  }

  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
