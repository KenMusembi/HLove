import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ProfileDetailsScreen extends StatelessWidget {
  ProfileDetailsScreen({Key? key}) : super(key: key);

  TextEditingController howmanychildrenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 274.h,
                          margin: EdgeInsets.only(right: 34.h),
                          child: Text("msg_tell_us_more_about".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displaySmall!
                                  .copyWith(height: 1.50))),
                      Container(
                          height: 63.v,
                          width: 295.h,
                          margin: EdgeInsets.only(left: 7.h, top: 30.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 2.v),
                                          Text("msg_sagana_near_sagana".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("msg_where_do_you_stay".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      CustomFloatingTextField(
                          margin:
                              EdgeInsets.only(left: 7.h, top: 30.v, right: 7.h),
                          controller: howmanychildrenController,
                          labelText: "msg_how_many_children".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "msg_how_many_children".tr,
                          textInputAction: TextInputAction.done),
                      Container(
                          height: 63.v,
                          width: 295.h,
                          margin: EdgeInsets.only(left: 7.h, top: 41.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.all(20.h),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Text("lbl_peer_educator".tr,
                                        style: theme.textTheme.bodyMedium))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text(
                                        "msg_what_is_your_occupation".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      Container(
                          height: 63.v,
                          width: 295.h,
                          margin: EdgeInsets.only(left: 7.h, top: 30.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 2.v),
                                          Text("msg_i_am_an_optimist".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("msg_how_would_you_describe".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      Container(
                          margin: EdgeInsets.fromLTRB(7.h, 39.v, 7.h, 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 19.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: 20.v,
                                width: 18.h),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Text("msg_choose_date_confirmed".tr,
                                    style: CustomTextStyles.titleSmallPrimary))
                          ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapConfirm(context);
                })));
  }

  /// Navigates to the calendarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the calendarScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarScreen);
  }
}
