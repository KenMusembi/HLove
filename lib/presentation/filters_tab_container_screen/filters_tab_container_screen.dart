import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/presentation/filters_page/filters_page.dart';

class FiltersTabContainerScreen extends StatefulWidget {
  const FiltersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FiltersTabContainerScreenState createState() =>
      FiltersTabContainerScreenState();
}

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
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black900,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.black900,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup235,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup45,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 40.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "lbl_filters".tr,
                                    style: CustomTextStyles.headlineSmallBold,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 76.h,
                                      top: 7.v,
                                    ),
                                    child: Text(
                                      "lbl_clear".tr,
                                      style:
                                          CustomTextStyles.titleMediumPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 40.h,
                              top: 35.v,
                            ),
                            child: Text(
                              "lbl_interested_in".tr,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                          ),
                          SizedBox(height: 21.v),
                          Container(
                            height: 58.v,
                            width: 295.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                15.h,
                              ),
                              border: Border.all(
                                color: appTheme.gray200,
                                width: 1.h,
                              ),
                            ),
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor:
                                  theme.colorScheme.onPrimary.withOpacity(1),
                              labelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor: appTheme.black900,
                              unselectedLabelStyle: TextStyle(
                                fontSize: 14.fSize,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                              indicator: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15.h),
                                ),
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "lbl_girls".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_boys".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_both".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 454.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                FiltersPage(),
                                FiltersPage(),
                                FiltersPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgLightbulb,
                    height: 12.v,
                    width: 27.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 163.v),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
