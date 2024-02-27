import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

import '../../widgets/custom_floating_text_field.dart';

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

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const List<String> list = <String>['Women', 'Men', 'Transgender', 'Non Binary', 'Women & Men'];
  String dropdownValue = list.first;
  TextEditingController locationController = TextEditingController();
  double _startValue = 24.0;
  double _endValue = 40.0;
  double _distanceStartValue = 10.0;
  double _distanceEndValue = 50.0;

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
            EdgeInsets.only(left: 20.h, top: 10.v, right: 20.h),
            child: Column(
              children: [
                Text("lbl_filters".tr,
                    style: theme.textTheme.headlineLarge),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      right: 7.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Text('Interested in   ', style: TextStyle(fontWeight: FontWeight.bold),),
                      DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward, color: Colors.red),
                      dropdownColor: Colors.white,
                      elevation: 16,
                      //borderRadius: BorderRadius(),
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 1,
                        color: Colors.red,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                        ],),
                        SizedBox(height: 30.v),

                        CustomFloatingTextField(
                            controller: locationController,
                            labelText: "lbl_location".tr,
                            labelStyle: theme.textTheme.bodySmall!,
                            hintText: "msg_kerugoya_kirinyaga".tr,
                            textInputAction: TextInputAction.done),
                        SizedBox(height: 30.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Distance radius', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                          Text(_distanceStartValue.round().toString() +  ' - ' +_distanceEndValue.round().toString() + ' Kms'),
                        ],),

                        RangeSlider(
                          min: 10.0,
                          max: 500.0,
                          divisions: 25,
                          activeColor: Colors.red,
                          labels: RangeLabels( _distanceStartValue.round().toString(),
                            _endValue.round().toString(),),
                          values: RangeValues(_distanceStartValue, _distanceEndValue),
                          onChanged: (values) {
                            setState(() {
                              _distanceStartValue = values.start;
                              _distanceEndValue = values.end;
                            });
                          },
                        ),
                        SizedBox(height: 30.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Age range', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                            Text(_startValue.round().toString() +  ' - ' +_endValue.round().toString()),
                          ],),

                        RangeSlider(
                          min: 20.0,
                          max: 60.0,
                          divisions: 20,
                          activeColor: Colors.red,
                          labels: RangeLabels( _startValue.round().toString(),
                            _endValue.round().toString(),),
                          values: RangeValues(_startValue, _endValue),
                          onChanged: (values) {
                            setState(() {
                              _startValue = values.start;
                              _endValue = values.end;
                            });
                          },
                        ),

                        // Container(
                        //   margin: EdgeInsets.only(left: 93.h),
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: 1.h,
                        //     vertical: 19.v,
                        //   ),
                        //   decoration: AppDecoration.fillPrimary,
                        //   child: Text(
                        //     "lbl_transgender".tr,
                        //     style: theme.textTheme.titleSmall,
                        //   ),
                        //  ),
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: Container(
                        //     padding: EdgeInsets.symmetric(
                        //       horizontal: 4.h,
                        //       vertical: 17.v,
                        //     ),
                        //     decoration: AppDecoration.fillPrimary.copyWith(
                        //       borderRadius: BorderRadiusStyle.customBorderLR15,
                        //     ),
                        //     child: Text(
                        //       "lbl_non_binary".tr,
                        //       style: theme.textTheme.titleSmall,
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(height: 31.v),
                        // SizedBox(
                        //   height: 64.v,
                        //   width: 295.h,
                        //   child: Stack(
                        //     alignment: Alignment.topLeft,
                        //     children: [
                        //       Align(
                        //         alignment: Alignment.bottomCenter,
                        //         child: Container(
                        //           margin: EdgeInsets.only(top: 6.v),
                        //           padding: EdgeInsets.symmetric(
                        //             horizontal: 20.h,
                        //             vertical: 17.v,
                        //           ),
                        //           decoration:
                        //               AppDecoration.outlineGray.copyWith(
                        //             borderRadius:
                        //                 BorderRadiusStyle.roundedBorder15,
                        //           ),
                        //           child: Row(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               Padding(
                        //                 padding: EdgeInsets.only(
                        //                   top: 4.v,
                        //                   bottom: 2.v,
                        //                 ),
                        //                 child: Text(
                        //                   "msg_kerugoya_kirinyaga".tr,
                        //                   style: theme.textTheme.bodyMedium,
                        //                 ),
                        //               ),
                        //               CustomImageView(
                        //                 svgPath: ImageConstant.imgArrowright,
                        //                 height: 24.adaptSize,
                        //                 width: 24.adaptSize,
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //       Align(
                        //         alignment: Alignment.topLeft,
                        //         child: Padding(
                        //           padding: EdgeInsets.only(left: 28.h),
                        //           child: Text(
                        //             "lbl_location".tr,
                        //             style: theme.textTheme.bodySmall,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     top: 32.v,
                        //     right: 22.h,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "lbl_distance_radius".tr,
                        //         style: CustomTextStyles.titleMediumBlack900,
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.only(top: 3.v),
                        //         child: Text(
                        //           "lbl_50km".tr,
                        //           style: CustomTextStyles.bodyMediumBlack900_1,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     top: 21.v,
                        //     right: 22.h,
                        //   ),
                        //   child: SliderTheme(
                        //     data: SliderThemeData(
                        //       trackShape: RoundedRectSliderTrackShape(),
                        //       activeTrackColor: theme.colorScheme.primary,
                        //       inactiveTrackColor: appTheme.gray200,
                        //       thumbColor: theme.colorScheme.primary,
                        //       thumbShape: RoundSliderThumbShape(),
                        //     ),
                        //     child: Slider(
                        //       value: 49.83,
                        //       min: 0.0,
                        //       max: 100.0,
                        //       onChanged: (value) {},
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     top: 33.v,
                        //     right: 22.h,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         "lbl_age_range".tr,
                        //         style: CustomTextStyles.titleMediumBlack900,
                        //       ),
                        //       Text(
                        //         "lbl_22_28".tr,
                        //         style: CustomTextStyles.bodyMediumBlack900_1,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     top: 20.v,
                        //     right: 22.h,
                        //   ),
                        //   child: SliderTheme(
                        //     data: SliderThemeData(
                        //       trackShape: RoundedRectSliderTrackShape(),
                        //       activeTrackColor: theme.colorScheme.primary,
                        //       inactiveTrackColor: appTheme.gray200,
                        //       thumbColor: theme.colorScheme.primary,
                        //       thumbShape: RoundSliderThumbShape(),
                        //     ),
                        //     child: RangeSlider(
                        //       values: RangeValues(
                        //         0,
                        //         0,
                        //       ),
                        //       min: 0.0,
                        //       max: 100.0,
                        //       onChanged: (value) {},
                        //     ),
                        //   ),
                        // ),
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

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapMainPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPage);
  }
}
