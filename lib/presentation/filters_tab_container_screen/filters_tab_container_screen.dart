import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/presentation/filters_page/filters_page.dart';
import 'package:hlove/widgets/custom_icon_button.dart';

class FiltersTabContainerScreen extends StatefulWidget {
  const FiltersTabContainerScreen({Key? key}) : super(key: key);

  @override
  FiltersTabContainerScreenState createState() =>
      FiltersTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class FiltersTabContainerScreenState extends State<FiltersTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 786.12.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 79.v,
                                    width: 172.h,
                                    margin: EdgeInsets.only(right: 59.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgLightbulb,
                                              height: 12.v,
                                              width: 27.h,
                                              alignment: Alignment.centerLeft,
                                              margin:
                                                  EdgeInsets.only(left: 34.h)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                            "lbl_clear".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumPrimary)),
                                                    SizedBox(height: 30.v),
                                                    Text("lbl_filters".tr,
                                                        style: CustomTextStyles
                                                            .headlineSmallBold)
                                                  ]))
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(left: 44.h, top: 50.v),
                                child: Text("lbl_interested_in".tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            SizedBox(height: 21.v),
                            Container(
                                height: 58.v,
                                width: 343.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.h),
                                    border: Border.all(
                                        color: appTheme.gray200, width: 1.h)),
                                child: TabBar(
                                    controller: tabviewController,
                                    labelPadding: EdgeInsets.zero,
                                    labelColor: theme.colorScheme.onPrimary
                                        .withOpacity(1),
                                    labelStyle: TextStyle(
                                        fontSize: 14.fSize,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700),
                                    unselectedLabelColor: appTheme.black900,
                                    unselectedLabelStyle: TextStyle(
                                        fontSize: 14.fSize,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400),
                                    indicator: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(15.h))),
                                    tabs: [
                                      Tab(child: Text("lbl_women".tr)),
                                      Tab(child: Text("lbl_men".tr)),
                                      Tab(child: Text("lbl_both".tr))
                                    ])),
                            SizedBox(
                                height: 519.v,
                                child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      FiltersPage(),
                                      FiltersPage(),
                                      FiltersPage()
                                    ]))
                          ])),
                  CustomIconButton(
                      height: 52.adaptSize,
                      width: 52.adaptSize,
                      margin: EdgeInsets.only(left: 27.h, top: 25.v),
                      padding: EdgeInsets.all(14.h),
                      alignment: Alignment.topLeft,
                      onTap: () {
                        onTapBtnArrowleftone(context);
                      },
                      child:
                          CustomImageView(svgPath: ImageConstant.imgArrowleft))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
