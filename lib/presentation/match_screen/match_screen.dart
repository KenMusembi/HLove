import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key})
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
              SizedBox(height: 5.v),
              SizedBox(
                height: 403.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto264x199,
                      height: 264.v,
                      width: 199.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 25.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto1,
                      height: 264.v,
                      width: 199.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 22.v),
                    ),
                    CustomIconButton(
                      height: 69.adaptSize,
                      width: 69.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.outlineBlack,
                      alignment: Alignment.topCenter,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFavoritePrimary69x69,
                      ),
                    ),
                    CustomIconButton(
                      height: 69.adaptSize,
                      width: 69.adaptSize,
                      margin: EdgeInsets.only(left: 16.h),
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.outlineBlack,
                      alignment: Alignment.bottomLeft,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFavorite69x69,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_it_s_a_match_jake".tr,
                style: CustomTextStyles.displaySmallPrimary,
              ),
              SizedBox(height: 4.v),
              Text(
                "msg_start_a_conversation".tr,
                style: CustomTextStyles.bodyMediumBlack900_2,
              ),
              SizedBox(height: 84.v),
              CustomElevatedButton(
                text: "lbl_say_hello".tr,
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "lbl_keep_swiping".tr,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
