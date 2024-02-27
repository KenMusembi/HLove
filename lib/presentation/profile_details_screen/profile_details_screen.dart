import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_floating_text_field.dart';
import 'package:intl/intl.dart';

import '../../widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfileDetailsScreen extends StatelessWidget {
  ProfileDetailsScreen({Key? key}) : super(key: key);

  TextEditingController wheredoyoustayController = TextEditingController();
  TextEditingController howmanychildrenController = TextEditingController();
  TextEditingController whatisyouroccupationController = TextEditingController();
  TextEditingController howwouldyoudescribeyourselfController = TextEditingController();

  static const List<String> list = <String>['Female', 'Male', 'Transgender', 'Non Binary', 'Prefer not to Say'];
  String dropdownValue = list.first;

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
                    margin: EdgeInsets.fromLTRB(26.h, 10.v, 297.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 20.v),
    child: SingleChildScrollView(
    child: ConstrainedBox(
    constraints: BoxConstraints(
    //minHeight: viewportConstraints.maxHeight,
    ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_tell_us_more_about".tr,
                          style: CustomTextStyles.headlineSmallBold),
                      SizedBox(height: 20.v),
                      CustomFloatingTextField(
                          controller: wheredoyoustayController,
                          labelText: "msg_where_do_you_stay".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "msg_sagana_near_sagana".tr,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      CustomFloatingTextField(
                          controller: howmanychildrenController,
                          labelText: "msg_how_many_children".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "3".tr,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      CustomFloatingTextField(
                          controller: whatisyouroccupationController,
                          labelText: "msg_what_is_your_occupation".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "lbl_peer_educator".tr,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      CustomFloatingTextField(
                          controller: howwouldyoudescribeyourselfController,
                          labelText: "msg_how_would_you_describe".tr,
                          labelStyle: theme.textTheme.bodySmall!,
                          hintText: "msg_i_am_an_optimist".tr,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(text: "msg_choose_date_confirmed".tr,
                          onTap: ( ) async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context, //context of current state
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101),
                                barrierColor: Colors.grey
                            );
                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate); //formatted date output using intl package =>  2021-03-16

                            }else{
                              print("Date is not selected");
                            }
                          }
                      ),
                      SizedBox(height: 20.v),
                      Column( children: [ Stack(
                              alignment: Alignment.bottomCenter,
                              //fit: StackFit.expand,
                              children: [
                                //TO-DO upload picture functionality
                                CustomImageView(
                                    imagePath: ImageConstant.imgYellowCard,
                                    height: 300.adaptSize,
                                    width: 320.adaptSize,
                                    radius: BorderRadius.circular(15.h),
                                    alignment: Alignment.topCenter),
                                CustomIconButton(
                                    height: 68.adaptSize,
                                    width: 68.adaptSize,
                                    padding: EdgeInsets.all(4.h),
                                    decoration:
                                    IconButtonStyleHelper.outlineOnPrimary,
                                    alignment: Alignment.bottomCenter,
                                    onTap: (){
                                      print('camera button tapped');
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera)),
                              ]),
                            SizedBox(height: 5.v),
                            Text('Upload a picture of your yellow card', textAlign: TextAlign.justify),
                        SizedBox(height: 15.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Gender   ', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                // setState(() {
                                //   dropdownValue = value!;
                                // });
                              },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],),
                          ]),
                    ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 24.v),
                onTap: () {
                  onTapConfirm(context);
                })
        ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iAmScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iAmScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passionsScreen);
  }
}
