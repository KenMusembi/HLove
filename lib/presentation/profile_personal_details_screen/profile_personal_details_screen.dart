import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_floating_text_field.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:hlove/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

// ignore_for_file: must_be_immutable
class ProfilePersonalDetailsScreen extends StatelessWidget {
  ProfilePersonalDetailsScreen({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  DateTime date = DateTime.now();

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
                    margin: EdgeInsets.fromLTRB(16.h, 10.v, 307.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.fromLTRB(20.h, 10.v, 20.h, 10.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_enter_personal_details".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: phoneController,
                                hintText: "lbl_722000000".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_phone_number".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 64.v,
                          width: 300.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomTextFormField(
                                width: 295.h,
                                controller: emailController,
                                hintText: "lbl_email_example".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text("lbl_email".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(height: 25.v),
                SizedBox(
                    height: 64.v,
                    width: 280.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Gender   ', style: TextStyle(fontWeight: FontWeight.bold),),
                          DropdownButton<String>(
                            value: dropdownValue,
                            hint: Text('Your gender'),
                            icon: const Icon(Icons.arrow_downward, color: Colors.red),
                            dropdownColor: Colors.white,
                            elevation: 16,
                            //borderRadius: BorderRadius(),
                            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
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
                        ],)),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(text: "msg_choose_birthday".tr,
                          margin:
                          EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.v),
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
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
              onTap: (){
                onTapProfileDetails(context);
              },
                text: "lbl_confirm".tr,
                margin:
                    EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProfileDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileDetailsScreen);
  }

}
