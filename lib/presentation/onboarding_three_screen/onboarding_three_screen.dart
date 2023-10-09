import '../onboarding_three_screen/widgets/slidergirltwo1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Column(children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGirl3,
                                height: 300.v,
                                width: 200.h,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.symmetric(vertical: 30.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: CarouselSlider.builder(
                                    options: CarouselOptions(
                                        height: 360.v,
                                        initialPage: 0,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          sliderIndex = index;
                                        }),
                                    itemCount: 1,
                                    itemBuilder: (context, index, realIndex) {
                                      return Slidergirltwo1ItemWidget();
                                    })),
                            CustomImageView(
                                imagePath: ImageConstant.imgGirl31,
                                height: 300.v,
                                width: 200.h,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.only(
                                    left: 24.h, top: 30.v, bottom: 30.v))
                          ]))),
                  SizedBox(height: 47.v),
                  Text("msg_free_but_premium".tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 15.v),
                  SizedBox(
                      width: 241.h,
                      child: Text("msg_sign_up_today_and".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer
                              .copyWith(height: 1.50))),
                  SizedBox(height: 29.v),
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
                  CustomElevatedButton(
                      text: "lbl_download_hlove".tr,
                      margin:
                          EdgeInsets.only(left: 40.h, top: 42.v, right: 40.h),
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
                            style: CustomTextStyles.titleSmallPrimary_1)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
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
}
