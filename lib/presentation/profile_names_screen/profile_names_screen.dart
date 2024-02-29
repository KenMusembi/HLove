import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_floating_text_field.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:hlove/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

// ignore_for_file: must_be_immutable
class ProfileNamesScreen extends StatelessWidget {
  ProfileNamesScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  DateTime date = DateTime.now();

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
                    margin: EdgeInsets.fromLTRB(16.h, 10.v, 307.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.fromLTRB(20.h, 10.v, 20.h, 10.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_enter_profile_details".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 106.v,
                          width: 101.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                //TO-DO upload picture functionality
                                CustomImageView(
                                    imagePath: ImageConstant.imgPhoto,
                                    height: 99.adaptSize,
                                    width: 99.adaptSize,
                                    radius: BorderRadius.circular(25.h),
                                    alignment: Alignment.topCenter),
                                CustomIconButton(
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    decoration:
                                        IconButtonStyleHelper.outlineOnPrimary,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera))
                              ])),
                      SizedBox(height: 10.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: firstNameController,
                                hintText: "lbl_francis".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_first_name".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: middleNameController,
                                hintText: "lbl_example".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_middle_name".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: lastNameController,
                                hintText: "lbl_mkenya".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_last_name".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 20.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: usernameController,
                                hintText: "lbl_username".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_username_choose".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
              onTap: (){
                onTapProfileDetails(context);
              },
                text: "lbl_confirm".tr,
                margin:
                    EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProfileDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePersonalDetailsScreen);
  }

}
