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
class ProfileDetailsOneScreen extends StatelessWidget {
  ProfileDetailsOneScreen({Key? key}) : super(key: key);

  TextEditingController nameoneController = TextEditingController();
  TextEditingController nameTwoController = TextEditingController();
  TextEditingController nameThreeController = TextEditingController();
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
                                controller: nameoneController,
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
                                controller: nameTwoController,
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
                                controller: nameThreeController,
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
                                    child: Text("lbl_username".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(text: "msg_choose_birthday".tr,
                      onTap: ( ) async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context, //context of current state
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101),
                            barrierColor: Colors.grey
                        );
                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        }else{
                          print("Date is not selected");
                        }
                                           }
                      ),
                      // Container(
                      //     padding: EdgeInsets.symmetric(
                      //         horizontal: 12.h, vertical: 19.v),
                      //     decoration: AppDecoration.outlineGray.copyWith(
                      //         borderRadius: BorderRadiusStyle.roundedBorder15),
                      //     child: Row(children: [
                      //       CustomImageView(
                      //           svgPath: ImageConstant.imgCalendar,
                      //           height: 20.v,
                      //           width: 18.h),
                      //       Padding(
                      //           padding: EdgeInsets.only(left: 19.h, top: 2.v),
                      //           child: Text("msg_choose_birthday".tr,
                      //               style: CustomTextStyles.titleSmallPrimary))
                      //     ])),
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
    Navigator.pushNamed(context, AppRoutes.profileDetailsScreen);
  }

}
