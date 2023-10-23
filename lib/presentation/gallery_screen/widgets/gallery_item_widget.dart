import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  const GalleryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgPhoto260x146,
      height: 260.v,
      width: 146.h,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}
