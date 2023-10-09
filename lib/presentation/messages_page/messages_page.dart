import '../messages_page/widgets/usermessage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:kenny_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kenny_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kenny_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 52.v,
                title: AppbarTitle(
                    text: "lbl_messages".tr,
                    margin: EdgeInsets.only(left: 44.h)),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgSettings,
                      margin: EdgeInsets.symmetric(horizontal: 40.h))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomSearchView(
                      margin:
                          EdgeInsets.only(left: 40.h, top: 20.v, right: 40.h),
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(20.h, 14.v, 11.h, 14.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearch)),
                      prefixConstraints: BoxConstraints(maxHeight: 48.v),
                      suffix: Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: IconButton(
                              onPressed: () {
                                searchController.clear();
                              },
                              icon: Icon(Icons.clear,
                                  color: Colors.grey.shade600)))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 39.h, top: 12.v),
                          child: Text("lbl_activities".tr,
                              style: CustomTextStyles.titleMediumBlack90018))),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 40.h, top: 12.v),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Column(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPhoto58x58,
                                          height: 58.adaptSize,
                                          width: 58.adaptSize,
                                          radius: BorderRadius.circular(29.h)),
                                      SizedBox(height: 6.v),
                                      Text("lbl_you".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, bottom: 1.v),
                                    child: Column(children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 2.h),
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder33),
                                          child: Container(
                                              height: 66.adaptSize,
                                              width: 66.adaptSize,
                                              padding: EdgeInsets.all(4.h),
                                              decoration: AppDecoration.outline
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder33),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPhoto11,
                                                        height: 58.adaptSize,
                                                        width: 58.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(29.h),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPhoto12,
                                                        height: 58.adaptSize,
                                                        width: 58.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(29.h),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                      SizedBox(height: 6.v),
                                      Text("lbl_emma".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 19.h, top: 4.v, bottom: 1.v),
                                    child: Column(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPhoto13,
                                          height: 58.adaptSize,
                                          width: 58.adaptSize,
                                          radius: BorderRadius.circular(29.h)),
                                      SizedBox(height: 10.v),
                                      Text("lbl_ava".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 23.h, top: 4.v),
                                    child: Column(children: [
                                      SizedBox(
                                          height: 58.adaptSize,
                                          width: 58.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPhoto11,
                                                    height: 58.adaptSize,
                                                    width: 58.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            29.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPhoto14,
                                                    height: 58.adaptSize,
                                                    width: 58.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            29.h),
                                                    alignment: Alignment.center)
                                              ])),
                                      SizedBox(height: 11.v),
                                      Text("lbl_sophia".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Column(children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(1),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 2.h),
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder33),
                                          child: Container(
                                              height: 66.adaptSize,
                                              width: 66.adaptSize,
                                              padding: EdgeInsets.all(4.h),
                                              decoration: AppDecoration.outline
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder33),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPhoto11,
                                                        height: 58.adaptSize,
                                                        width: 58.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(29.h),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPhoto15,
                                                        height: 58.adaptSize,
                                                        width: 58.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(29.h),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                      SizedBox(height: 4.v),
                                      Text("lbl_amelia".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleSmall)
                                    ]))
                              ])))),
                  SizedBox(height: 14.v),
                  SizedBox(
                      height: 428.v,
                      width: 295.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 61.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(width: 229.h, child: Divider()),
                                      SizedBox(height: 67.v),
                                      SizedBox(width: 229.h, child: Divider()),
                                      SizedBox(height: 67.v),
                                      SizedBox(width: 229.h, child: Divider()),
                                      SizedBox(height: 67.v),
                                      SizedBox(width: 229.h, child: Divider()),
                                      SizedBox(height: 67.v),
                                      SizedBox(width: 229.h, child: Divider())
                                    ]))),
                        SizedBox(
                            width: double.maxFinite,
                            child: Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapmessages(context);
                                    },
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_messages".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack90018),
                                          SizedBox(height: 10.v),
                                          Expanded(
                                              child: ListView.separated(
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: 6.v);
                                                  },
                                                  itemCount: 7,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return UsermessageItemWidget();
                                                  }))
                                        ]))))
                      ]))
                ]))));
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.
  onTapmessages(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
