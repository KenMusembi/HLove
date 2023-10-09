import 'package:flutter/material.dart';
import 'package:kenny_s_application1/core/app_export.dart';
import 'package:kenny_s_application1/widgets/custom_elevated_button.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 40.h,
                    top: 32.v,
                    right: 40.h,
                  ),
                  child: Column(
                    children: [
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
                                decoration: AppDecoration.outlineGray.copyWith(
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
                      SizedBox(height: 32.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_distance".tr,
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "lbl_50km".tr,
                              style: CustomTextStyles.bodyMediumBlack900_2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      SliderTheme(
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
                      SizedBox(height: 33.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_age".tr,
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          Text(
                            "lbl_22_28".tr,
                            style: CustomTextStyles.bodyMediumBlack900_2,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      SliderTheme(
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
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                        text: "lbl_continue2".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
