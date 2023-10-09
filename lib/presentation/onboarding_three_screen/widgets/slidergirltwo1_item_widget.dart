import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Slidergirltwo1ItemWidget extends StatelessWidget {
  const Slidergirltwo1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgGirl3,
      height: 360.v,
      width: 235.h,
      radius: BorderRadius.circular(
        15.h,
      ),
    );
  }
}
