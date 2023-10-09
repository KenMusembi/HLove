import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kenny_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_floating_button.dart';
import 'package:kenny_s_application1/widgets/custom_icon_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 52.v,
          title: AppbarTitle(
            text: "lbl_messages".tr,
            margin: EdgeInsets.only(left: 40.h),
          ),
          actions: [
            AppbarIconbutton1(
              svgPath: ImageConstant.imgSettings,
              margin: EdgeInsets.symmetric(horizontal: 40.h),
            ),
          ],
        ),
        body: Container(
          height: 768.v,
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.h,
                    vertical: 34.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup45,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPhoto21,
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            radius: BorderRadius.circular(
                              24.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 8.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_samuel".tr,
                                  style: CustomTextStyles.headlineSmallBold,
                                ),
                                SizedBox(height: 1.v),
                                Row(
                                  children: [
                                    Container(
                                      height: 6.adaptSize,
                                      width: 6.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          3.h,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl_online".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomIconButton(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgOverflowmenuBlack900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 44.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 7.v,
                            ),
                            child: SizedBox(
                              width: 121.h,
                              child: Divider(),
                            ),
                          ),
                          Text(
                            "lbl_today".tr,
                            style: CustomTextStyles.bodySmallBlack900_1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 7.v,
                            ),
                            child: SizedBox(
                              width: 121.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 250.h,
                        margin: EdgeInsets.only(
                          top: 9.v,
                          right: 45.h,
                        ),
                        padding: EdgeInsets.all(16.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL15,
                        ),
                        child: Container(
                          width: 209.h,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Text(
                            "msg_hi_sam_how_are".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "lbl_2_55_pm".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 250.h,
                          margin: EdgeInsets.only(
                            left: 45.h,
                            top: 10.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 15.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL151,
                          ),
                          child: Container(
                            width: 211.h,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              right: 6.h,
                            ),
                            child: Text(
                              "msg_haha_truly_nice".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_3_02_pm".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkPrimary,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                        height: 53.v,
                        width: 143.h,
                        text: "msg_sure_let_s_do_it".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                        buttonTextStyle: theme.textTheme.bodyMedium!,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "lbl_3_10_pm".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 71.h,
                            top: 10.v,
                          ),
                          padding: EdgeInsets.all(15.h),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL151,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 3.v),
                              SizedBox(
                                width: 193.h,
                                child: Text(
                                  "msg_great_i_will_write".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_3_12_pm".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgCheckmarkPrimary,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 34.v,
                          right: 63.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 13.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 4.v),
                              child: Text(
                                "lbl_your_message".tr,
                                style: CustomTextStyles.bodyMediumBlack900_1,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgClockBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgLightbulb,
                height: 12.v,
                width: 27.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 49.v),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 48,
          width: 48,
          backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
          child: CustomImageView(
            svgPath: ImageConstant.imgMicrophonePrimary,
            height: 24.0.v,
            width: 24.0.h,
          ),
        ),
      ),
    );
  }
}
