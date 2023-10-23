import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

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
                        EdgeInsets.only(left: 40.h, top: 65.v, right: 40.h),
                    child: Column(children: [
                      Text("lbl_sign_in2".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 95.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgPhoto,
                          height: 99.adaptSize,
                          width: 99.adaptSize,
                          radius: BorderRadius.circular(25.h)),
                      SizedBox(height: 47.v),
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
                                    child: Text("lbl_francis".tr,
                                        style: theme.textTheme.bodyMedium))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_username".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 23.v)),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_sign_in".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapSignin(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the filtersTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the filtersTabContainerScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filtersTabContainerScreen);
  }
}
