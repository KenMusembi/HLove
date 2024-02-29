import '../passions_screen/widgets/chipviewone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';

class Item {
  String text;
  String imageUrl;
  bool isSelected;

  Item({required this.text, required this.imageUrl, this.isSelected = false});
}

class PassionsScreen extends StatefulWidget {
  @override
  _PassionsScreenState createState() => _PassionsScreenState();
}

class _PassionsScreenState extends State<PassionsScreen> {
  List<Item> _items = [
    Item(text: 'Photography', imageUrl: 'assets/images/img_camera.png'),
    Item(text: 'Shopping', imageUrl: 'assets/images/img_bag.png'),
    Item(text: 'Karaoke', imageUrl: 'assets/images/img_voice.png'),
    Item(text: 'Yoga', imageUrl: 'assets/images/img_yoga.png'),
    Item(text: 'Cooking', imageUrl: 'assets/images/img_cooking.png'),
    Item(text: 'Tennis', imageUrl: 'assets/images/img_tennis.png'),
    Item(text: 'Run', imageUrl: 'assets/images/img_run.png'),
    Item(text: 'Swimming', imageUrl: 'assets/images/img_swimming.png'),
    Item(text: 'Art', imageUrl: 'assets/images/img_art.png'),
    Item(text: 'Travelling', imageUrl: 'assets/images/img_travelling.png'),
    Item(text: 'Extreme', imageUrl: 'assets/images/img_extreme_sports.png'),
    Item(text: 'Music', imageUrl: 'assets/images/img_music.png'),
    Item(text: 'Drink', imageUrl: 'assets/images/img_drink.png'),
    Item(text: 'Video games', imageUrl: 'assets/images/img_video_games.png'),
  ];

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
            body: Padding(
                padding: EdgeInsets.fromLTRB(
                    30, 10, 10, 10), // Adjust the value as per your preference
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_your_interests".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 20),
                      Container(
                          width: 272.h,
                          margin: EdgeInsets.only(top: 9.v, right: 22.h),
                          child: Text("msg_select_a_few_of".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBlack900_1
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 10.v),

                      Flexible(
                          //flex: 2,
                          child:
                          GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 2,
                        ),
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          final item = _items[index];
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  item.isSelected = !item.isSelected;
                                });
                              },
                              child:
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RawChip(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      padding: EdgeInsets.only(
                                        top: 14.v,
                                        right: 19.h,
                                        bottom: 14.v,
                                      ),
                                      showCheckmark: false,
                                      labelPadding: EdgeInsets.zero,

                                      label: Text(
                                        item.text,
                                        style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      avatar: Image.asset(
                                        item.imageUrl,
                                        height: 11.adaptSize,
                                        width: 11.adaptSize,
                                        color: item.isSelected
                                            ? Colors.white
                                            : theme.colorScheme.primary,
                                      ),
                                      // selected: item.isSelected ?  true : false,
                                      backgroundColor: item.isSelected
                                          ? theme.colorScheme.primary
                                          : Colors.white,
                                      selectedColor: item.isSelected
                                          ? theme.colorScheme.primary
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: appTheme.gray200,
                                          width: 1.h,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          15.h,
                                        ),
                                      ),
                                      //     onSelected: (value) {
                                      // print(value);
                                      //     },
                                    ),
                                  ])
                          );
                        },
                      )
                      ),
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     padding: EdgeInsets.all(30),
                      //     textStyle: const TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 13,
                      //         fontStyle: FontStyle.normal),
                      //   ),
                      //   onPressed: () {
                      //     printSelectedItems(); // Call the function to print selected items
                      //   },
                      //   child: Text('Print Selected Items', style: TextStyle(color: Colors.white),),
                      //),


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

  void printSelectedItems() {
    for (var item in _items) {
      if (item.isSelected) {
        print(item.text); // Print the item's name
      }
    }
  }

}
