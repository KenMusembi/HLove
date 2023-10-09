import '../onboarding_two_screen/widgets/slidermatches_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends StatelessWidget {
  OnboardingTwoScreen({Key? key}) : super(key: key);

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
                                imagePath: ImageConstant.imgGirl1300x200,
                                height: 300.v,
                                width: 200.h,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.symmetric(vertical: 30.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGirl1,
                                height: 360.v,
                                width: 235.h,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.only(left: 24.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGirl3300x200,
                                height: 300.v,
                                width: 200.h,
                                radius: BorderRadius.circular(15.h),
                                margin: EdgeInsets.only(
                                    left: 24.h, top: 30.v, bottom: 30.v))
                          ]))),
                  SizedBox(height: 47.v),
                  SizedBox(
                      height: 122.v,
                      width: 287.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CarouselSlider.builder(
                            options: CarouselOptions(
                                height: 122.v,
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
                              return SlidermatchesItemWidget();
                            }),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                height: 8.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: sliderIndex,
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 8,
                                        activeDotColor:
                                            theme.colorScheme.primary,
                                        dotColor: appTheme.black900,
                                        dotHeight: 8.v,
                                        dotWidth: 8.h))))
                      ])),
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

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the onboardingThreeScreen.
  onTapDownloadhlove(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }
}
