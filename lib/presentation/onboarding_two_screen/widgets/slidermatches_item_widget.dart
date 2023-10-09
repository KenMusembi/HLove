import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SlidermatchesItemWidget extends StatelessWidget {
  const SlidermatchesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.v),
        child: Column(
          children: [
            Text(
              "lbl_matches".tr,
              style: CustomTextStyles.headlineSmallPrimary,
            ),
            SizedBox(height: 15.v),
            Text(
              "msg_we_match_you_with".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                height: 1.50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
