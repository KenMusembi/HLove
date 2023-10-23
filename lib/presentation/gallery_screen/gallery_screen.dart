import '../gallery_screen/widgets/gallery_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hlove/core/app_export.dart';
import 'package:hlove/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hlove/widgets/app_bar/custom_app_bar.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.fromLTRB(24.h, 2.v, 299.h, 2.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 32.h, top: 68.v, right: 32.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_gallery".tr,
                                style: CustomTextStyles.titleMediumBlack900),
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("lbl_see_all".tr,
                                    style: CustomTextStyles.titleSmallPrimary))
                          ])),
                  SizedBox(height: 23.v),
                  Expanded(
                      child: StaggeredGridView.countBuilder(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.31.h,
                          mainAxisSpacing: 10.31.h,
                          staggeredTileBuilder: (index) {
                            return StaggeredTile.fit(2);
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return GalleryItemWidget();
                          }))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
