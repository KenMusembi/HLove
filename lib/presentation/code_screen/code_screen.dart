import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_pin_code_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(24.h, 10.v, 299.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TimerCountdown(
                        // Endtime where you want to finish
                        // the countdown currently
                        // It is 5 minutes after app starts
                        format: CountDownTimerFormat.minutesSeconds,
                        endTime: DateTime.now().add(
                          const Duration(
                            minutes: 3,
                            seconds: 00,
                          ),
                        ),
                        onEnd: () {
                          // Function Called when timer is finished
                          print("Timer finished");
                        },
                      ),
                      // Text("lbl_00_42".tr,
                      //     style: theme.textTheme.headlineLarge),
                      SizedBox(height: 27.v),
                      SizedBox(
                          width: 205.h,
                          child: Text("msg_type_the_verification".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack90018
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 45.v),
                      CustomPinCodeTextField(
                          context: context, onChanged: (value) {}),


                      SizedBox(height: 75.v),
                      Text("lbl_send_again".tr,
                          style: CustomTextStyles.titleMediumPrimary),
                      SizedBox(height: 10, width: 0),
                      CustomElevatedButton(
                          text: "Submit".tr,
                          onTap: () {
                            onTapProfileDetails(context);
                          }),
                      SizedBox(height: 1.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProfileDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileDetailsOneScreen);
  }
}
