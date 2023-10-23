import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:hlove/widgets/custom_outlined_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 77.v),
              CustomImageView(
                imagePath: ImageConstant.imgHlovelogo11,
                height: 150.v,
                width: 132.h,
              ),
              SizedBox(height: 33.v),
              Text(
                "msg_sign_up_to_continue".tr,
                style: CustomTextStyles.titleMediumBlack90018,
              ),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                  text: "msg_continue_with_email".tr,
                  onTap: () {
                    onTapNumberScreen(context);
                  }),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "msg_use_phone_number".tr,
              ),
              SizedBox(height: 67.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 7.v,
                    ),
                    child: SizedBox(
                      width: 94.h,
                      child: Divider(
                        color: appTheme.black900.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Text(
                    "lbl_or_sign_up_with".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 7.v,
                    ),
                    child: SizedBox(
                      width: 94.h,
                      child: Divider(
                        color: appTheme.black900.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  top: 23.v,
                  right: 31.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFacebook,
                      ),
                    ),
                    CustomIconButton(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      margin: EdgeInsets.only(left: 20.h),
                      padding: EdgeInsets.all(16.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgGoogle,
                      ),
                    ),
                    CustomIconButton(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      margin: EdgeInsets.only(left: 20.h),
                      padding: EdgeInsets.all(16.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEye,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 78.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_terms_of_use".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 33.h),
                    child: Text(
                      "lbl_privacy_policy".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapNumberScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.numberScreen);
  }
}
