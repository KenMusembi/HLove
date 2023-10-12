import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';
import 'package:kenny_s_application1/widgets/custom_text_form_field.dart';

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
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 40.h, top: 136.v, right: 40.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_sign_up_via_mobile".tr,
                              style: theme.textTheme.displaySmall),
                          Container(
                              width: 288.h,
                              margin: EdgeInsets.only(top: 3.v, right: 6.h),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumBlack900_2
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 10.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.h, vertical: 17.v),
                              decoration: AppDecoration.outlineGray,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //     width: 82.h,
                                    //     child: CustomImageView(
                                    //         svgPath: ImageConstant.imgArrowdown,
                                    //         height: 24.adaptSize,
                                    //         width: 24.adaptSize,
                                    //         margin: EdgeInsets.only(left: 58.h),
                                    //         child: Padding(
                                    //             padding: EdgeInsets.symmetric(
                                    //                 vertical: 3.v),
                                    //             child: Text("lbl_254".tr,
                                    //                 style: theme
                                    //                     .textTheme.bodyMedium,
                                    //                 child: CustomImageView(
                                    //                     imagePath: ImageConstant
                                    //                         .imgKenyanflag1,
                                    //                     height: 19.v,
                                    //                     width: 22.h,
                                    //                     margin: EdgeInsets.only(
                                    //                         top: 2.v,
                                    //                         right: 60.h,
                                    //                         bottom: 3.v)))))),
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
                          SizedBox(height: 64.v),
                          CustomElevatedButton(
                              text: "lbl_send_code".tr,
                              onTap: () {
                                onTapSendcode(context);
                              }),
                          SizedBox(height: 5.v)
                        ])))));
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
