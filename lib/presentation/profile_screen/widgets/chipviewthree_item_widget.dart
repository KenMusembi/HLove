import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewthreeItemWidget extends StatelessWidget {
  const ChipviewthreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Travelling",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray200,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
