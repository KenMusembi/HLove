import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);

  TextEditingController phonenumberoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    margin: EdgeInsets.fromLTRB(16.h, 2.v, 307.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 15.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("msg_sign_up_via_mobile".tr,
                                  style: theme.textTheme.headlineMedium)),
                          Container(
                              width: 285.h,
                              margin: EdgeInsets.only(top: 55.v, right: 9.h),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleLarge!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 44.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.h, vertical: 17.v),
                              decoration: AppDecoration.outlineGray,
                              child: Row(children: [
                                Container(
                                    width: 85.h,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 61.h),
                                      // child: Padding(
                                      //     padding: EdgeInsets.symmetric(
                                      //         vertical: 3.v),
                                      //     child: Text("lbl_254".tr,
                                      //         style:
                                      //             theme.textTheme.bodyMedium,
                                      //         child: CustomImageView(
                                      //             imagePath: ImageConstant
                                      //                 .imgKenyanflag1,
                                      //             height: 19.v,
                                      //             width: 22.h,
                                      //             margin: EdgeInsets.only(
                                      //                 top: 3.v,
                                      //                 right: 63.h,
                                      //                 bottom: 2.v)
                                      //                 )
                                      //                 )
                                      //                 )
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: SizedBox(
                                        height: 24.v,
                                        child: VerticalDivider(
                                            width: 1.h,
                                            thickness: 1.v,
                                            indent: 3.h,
                                            endIndent: 3.h))),
                                CustomTextFormField(
                                    width: 167.h,
                                    controller: phonenumberoneController,
                                    margin: EdgeInsets.only(
                                        left: 20.h, top: 2.v, bottom: 4.v),
                                    hintText: "lbl_722000000".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.phone)
                              ])),
                          SizedBox(height: 80.v),
                          CustomElevatedButton(
                              text: "lbl_send_code".tr,
                              onTap: () {
                                onTapSendcode(context);
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the codeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the codeScreen.
  onTapSendcode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.codeScreen);
  }
}
