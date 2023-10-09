import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UsermessageItemWidget extends StatelessWidget {
  const UsermessageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder29,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgPhoto48x48,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 9.v,
            bottom: 6.v,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_emelie".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Text(
                    "lbl_23_min".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              SizedBox(height: 3.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "lbl_sticker".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.labelLargeOnPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
