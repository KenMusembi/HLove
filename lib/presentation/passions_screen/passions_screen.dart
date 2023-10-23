import '../passions_screen/widgets/chipviewone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

class PassionsScreen extends StatelessWidget {
  const PassionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 84.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 32.h, bottom: 3.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_continue".tr,
                      margin:
                          EdgeInsets.only(left: 10.h, top: 35.v, right: 10.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 54.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_your_interests".tr,
                          style: theme.textTheme.headlineLarge),
                      Container(
                          width: 272.h,
                          margin: EdgeInsets.only(top: 9.v, right: 22.h),
                          child: Text("msg_select_a_few_of".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBlack900_1
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 5.v),
                      Wrap(
                          runSpacing: 15.v,
                          spacing: 15.h,
                          children: List<Widget>.generate(
                              14, (index) => ChipviewoneItemWidget()))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_continue2".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
                onTap: () {
                  onTapContinue(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the friendsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the friendsScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.friendsScreen);
  }
}
