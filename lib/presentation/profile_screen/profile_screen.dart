import '../profile_screen/widgets/chipviewthree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';
import 'package:hlove/widgets/custom_elevated_button.dart';
import 'package:hlove/widgets/custom_bottom_bar.dart';
import 'package:hlove/presentation/matches_page/matches_page.dart';
import 'package:hlove/presentation/admirers_page/admirers_page.dart';
import 'package:hlove/presentation/interests_page/interests_page.dart';
import 'package:hlove/presentation/profile_screen/profile_screen.dart';
import 'package:hlove/presentation/main_page/main_page.dart';

class Item {
  String text;
  String imageUrl;
  bool isSelected;

  Item({required this.text, required this.imageUrl, this.isSelected = false});
}
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final List<Item> item = [
    Item(text: 'Photography', imageUrl: 'assets/images/img_camera.png', isSelected: true),
    Item(text: 'Shopping', imageUrl: 'assets/images/img_bag.png'),
    Item(text: 'Karaoke', imageUrl: 'assets/images/img_voice.png'),
    Item(text: 'Yoga', imageUrl: 'assets/images/img_yoga.png'),
    Item(text: 'Cooking', imageUrl: 'assets/images/img_cooking.png'),
    Item(text: 'Video games', imageUrl: 'assets/images/img_video_games.png'),
  ];
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child:  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.white, // Background color
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant
                          .imgPhoto210x360,
                      height: 500.adaptSize,
                      width: double.maxFinite,
                      alignment: Alignment.center),
                  CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      margin: EdgeInsets.only(
                          left: 30.h, top: 38.v),
                      padding: EdgeInsets.all(12.h),
                      decoration:
                      IconButtonStyleHelper
                          .outlineGrayTL15,
                      alignment: Alignment.topLeft,
                      onTap: () {
                        onTapBtnArrowleftone(
                            context);
                      },
                      child: CustomImageView(
                          svgPath: ImageConstant
                              .imgArrowleftOnprimary)),
                  Positioned(
                    left: 15,
                    bottom: 20,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CustomImageView(
                          onTap: () {
                            print('star selected');
                          },
                          svgPath: ImageConstant
                              .imgCloseYellow900),
                    )),
                  Positioned(
                    bottom: 10,
                    left: MediaQuery.of(context).size.width / 2 - 30,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CustomImageView(
                          onTap: () {
                            print('star selected');
                          },
                          height: 62,
                          width: 62,
                          color: Colors.red,
                          svgPath: ImageConstant
                              .imgVector),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 15,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CustomImageView(
                        onTap: () {
                          print('star selected');
                      },
                          svgPath: ImageConstant
                              .imgStar),
                  ),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("msg_jacinta_mwidowo".tr,
                      style: CustomTextStyles
                          .headlineSmallBold),
                  SizedBox(height: 4.v),
                  Text("lbl_cateress".tr,
                      style: CustomTextStyles
                          .bodyMediumBlack900_1),
                  SizedBox(height: 20.h),
                  Text("lbl_location".tr,
                      style: CustomTextStyles
                          .titleMediumBlack900),
                  SizedBox(height: 4.v),
                  Text("msg_kutus_near_kutus".tr,
                      style: CustomTextStyles
                          .bodyMediumBlack900_1),
                  SizedBox(height: 20.h),
                  Text("lbl_about".tr,
                      style:
                      CustomTextStyles.titleMediumBlack900),
                  SizedBox(
                      width: 277.h,
                      child: ReadMoreText("msg_my_name_is_jacinta".tr,
                          trimLines: 4,
                          colorClickableText: theme.colorScheme.primary,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: "lbl_read_more".tr,
                          moreStyle: CustomTextStyles
                              .bodyMediumBlack900_1
                              .copyWith(height: 1.50),
                          lessStyle: CustomTextStyles
                              .bodyMediumBlack900_1
                              .copyWith(height: 1.50))),
                  SizedBox(height: 20.h),
                  Text(
                    'Interests',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2,
                    children: List.generate(
                      item.length, // Example number of chips
                          (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  item[index].isSelected = !item[index].isSelected;
                                });
                              },
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RawChip(
                            padding: EdgeInsets.only(
                              top: 14.v,
                              right: 19.h,
                              bottom: 14.v,
                            ),
                            showCheckmark: false,
                            labelPadding: EdgeInsets.zero,
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 0.v,
                                left: 5.v,
                                right: 5.v,
                                bottom: 0.v,
                              ), child:
                            Image.asset(
                              item[index].imageUrl,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              color: item[index].isSelected
                                  ? Colors.white
                                  : theme.colorScheme.primary,
                            ),),
                            SizedBox(width: 5),
                            Text(
                              item[index].text,
                              style: TextStyle(
                                color: item[index].isSelected
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12.fSize,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                              backgroundColor: item[index].isSelected
                                  ? theme.colorScheme.primary
                                  : Colors.white,
                              selectedColor: item[index].isSelected
                                  ? theme.colorScheme.primary
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: appTheme.gray200,
                                  width: 1.h,
                                ),
                                borderRadius: BorderRadius.circular(
                                  15.h,
                                ),),
                      ),])),
                    ),
                  ),

                ],
              ),
            ),
          ],
        )),

      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              context, getCurrentRoute(type));
        },
      ),
    ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Discover:
        return AppRoutes.mainPage;
      case BottomBarEnum.Matches:
        return AppRoutes.admirersPage;
      case BottomBarEnum.Interests:
        return AppRoutes.interestsPage;
      case BottomBarEnum.Matches:
        return AppRoutes.matchesPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return AppRoutes.mainPage;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.admirersPage:
        return MatchesPage();
      case AppRoutes.interestsPage:
        return InterestsPage();
      case AppRoutes.matchesPage:
        return MatchesPage();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
