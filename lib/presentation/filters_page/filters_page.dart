import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FiltersPage extends StatefulWidget {
  const FiltersPage({Key? key})
      : super(
          key: key,
        );

  @override
  FiltersPageState createState() => FiltersPageState();
}

class FiltersPageState extends State<FiltersPage>
    with AutomaticKeepAliveClientMixin<FiltersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 43.h,
                      right: 13.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 93.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 1.h,
                            vertical: 19.v,
                          ),
                          decoration: AppDecoration.fillPrimary,
                          child: Text(
                            "lbl_transgender".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 17.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR15,
                            ),
                            child: Text(
                              "lbl_non_binary".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 31.v),
                        SizedBox(
                          height: 64.v,
                          width: 295.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(top: 6.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.h,
                                    vertical: 17.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 4.v,
                                          bottom: 2.v,
                                        ),
                                        child: Text(
                                          "msg_kerugoya_kirinyaga".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Text(
                                    "lbl_location".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 32.v,
                            right: 22.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_distance_radius".tr,
                                style: CustomTextStyles.titleMediumBlack900,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_50km".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 21.v,
                            right: 22.h,
                          ),
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackShape: RoundedRectSliderTrackShape(),
                              activeTrackColor: theme.colorScheme.primary,
                              inactiveTrackColor: appTheme.gray200,
                              thumbColor: theme.colorScheme.primary,
                              thumbShape: RoundSliderThumbShape(),
                            ),
                            child: Slider(
                              value: 49.83,
                              min: 0.0,
                              max: 100.0,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 33.v,
                            right: 22.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_age_range".tr,
                                style: CustomTextStyles.titleMediumBlack900,
                              ),
                              Text(
                                "lbl_22_28".tr,
                                style: CustomTextStyles.bodyMediumBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            right: 22.h,
                          ),
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackShape: RoundedRectSliderTrackShape(),
                              activeTrackColor: theme.colorScheme.primary,
                              inactiveTrackColor: appTheme.gray200,
                              thumbColor: theme.colorScheme.primary,
                              thumbShape: RoundSliderThumbShape(),
                            ),
                            child: RangeSlider(
                              values: RangeValues(
                                0,
                                0,
                              ),
                              min: 0.0,
                              max: 100.0,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          text: "lbl_continue2".tr,
                          onTap: () {
                            onTapMainPage(context);
                          },
                          margin: EdgeInsets.only(
                            top: 40.v,
                            right: 22.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapMainPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPage);
  }
}
