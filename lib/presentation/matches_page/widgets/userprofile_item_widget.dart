import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 140.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPhoto200x140,
            height: 200.v,
            width: 140.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outlineBlack900,
                  child: Text(
                    "lbl_stacy_31".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  color: appTheme.black900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.customBorderBL15,
                  ),
                  child: Container(
                    height: 40.v,
                    width: 140.h,
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL15,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto40x140,
                          height: 40.v,
                          width: 140.h,
                          radius: BorderRadius.vertical(
                            bottom: Radius.circular(15.h),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCloseOnprimary,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 10.v),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: SizedBox(
                                    height: 40.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgVector,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 10.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
