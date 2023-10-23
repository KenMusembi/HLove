import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_floating_text_field.dart';

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
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(26.h, 2.v, 297.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("msg_tell_us_more_about".tr,
                          style: CustomTextStyles.headlineSmallBold),
                      SizedBox(height: 42.v),
                      SizedBox(
                          height: 63.v,
                          width: 295.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray
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
                      SizedBox(height: 30.v),
                      CustomFloatingTextField(
                          controller: howmanychildrenController,
                          labelText: "msg_how_many_children".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "msg_how_many_children".tr,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 41.v),
                      SizedBox(
                          height: 63.v,
                          width: 295.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.all(20.h),
                                    decoration: AppDecoration.outlineGray
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
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 63.v,
                          width: 295.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray
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
                      SizedBox(height: 39.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 19.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: 20.v,
                                width: 18.h),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Text("msg_choose_date_confirmed".tr,
                                    style: CustomTextStyles.titleSmallPrimary))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapConfirm(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iAmScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iAmScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iAmScreen);
  }
}
