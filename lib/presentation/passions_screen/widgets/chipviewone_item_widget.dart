import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewoneItemWidget extends StatelessWidget {
  const ChipviewoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 14.v,
        right: 19.h,
        bottom: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Photography",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCameraPrimary,
        height: 19.adaptSize,
        width: 19.adaptSize,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray200,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
