import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_snackbar.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hlove/firebase_options.dart';

// ignore_for_file: must_be_immutable
class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);

  TextEditingController phonenumberoneController = TextEditingController();
  String initialCountry = 'KE';
  PhoneNumber number = PhoneNumber(isoCode: 'KE');
  
  final _auth = FirebaseAuth.instance;
  //late final user = firebaseUser();
  var verificationId = '';//StateProvider((ref) => 0);
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
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 15.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("msg_sign_up_via_mobile".tr,
                                  style: theme.textTheme.headlineMedium)),
                          Container(
                              width: 285.h,
                              margin: EdgeInsets.only(top: 55.v, right: 9.h),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleLarge!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 44.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.h, vertical: 6.v),
                              decoration: AppDecoration.outlineGray,
                              child: InternationalPhoneNumberInput(
                                onInputChanged: (PhoneNumber number) {
                                  print(number.phoneNumber);
                                },
                                onInputValidated: (bool value) {
                                  print(value);
                                },
                                selectorConfig: SelectorConfig(
                                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                  useBottomSheetSafeArea: true,
                                ),
                                ignoreBlank: false,
                                autoValidateMode: AutovalidateMode.disabled,
                                selectorTextStyle: TextStyle(color: Colors.black),
                                initialValue: number,
                                textFieldController: phonenumberoneController,
                                formatInput: true,
                                keyboardType:
                                TextInputType.numberWithOptions(signed: true, decimal: false),
                                inputBorder: OutlineInputBorder(),
                                onSaved: (PhoneNumber number) {
                                  print('On Saved: $number');
                                  //phoneAuthentication(number.phoneNumber.toString());
                                },
                              ),),
                          SizedBox(height: 80.v),
                          CustomElevatedButton(
                              text: "lbl_send_code".tr,
                              onTap: () {
                                //_formKey.currentState?.save();
                                onTapSendcode(context);
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the codeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the codeScreen.
  onTapSendcode( BuildContext context) {
   // print('The phone number is');
    // print(txt.toString());
    Navigator.pushNamed(context, AppRoutes.codeScreen);

  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential) async{
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e){
          if (e.code == 'invalid-phone-number'){
            print( 'Error, The provided phone number is not valid');
          } else {
            print('Error_is ' + e.toString() );
          }
        },
        codeSent: (verificationId, resendToken) async{
        //this.verificationId = verificationId;
        // Update the UI - wait for the user to enter the SMS code
          String smsCode = '123456';

          // Create a PhoneAuthCredential with the code
          PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

          // Sign the user in (or link) with the credential
          await _auth.signInWithCredential(credential);
        },
        codeAutoRetrievalTimeout: (verificationId){},
        );
  }


}
