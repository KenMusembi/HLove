import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SlidergirltwoItemWidget extends StatelessWidget {
  const SlidergirltwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgGirl2,
      height: 360.v,
      width: 235.h,
      radius: BorderRadius.circular(
        15.h,
      ),
    );
  }
}
