import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxoutlinehome2,
      type: BottomBarEnum.Iconsaxoutlinehome2,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotificationIndigoA200,
      type: BottomBarEnum.Notificationindigoa200,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxtwotoneheart,
      type: BottomBarEnum.Iconsaxtwotoneheart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsaxtwotoneprofile,
      type: BottomBarEnum.Iconsaxtwotoneprofile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray40026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  35,
                ),
                width: getSize(
                  35,
                ),
                color: ColorConstant.indigoA200,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  35,
                ),
                width: getSize(
                  35,
                ),
                color: ColorConstant.indigoA200,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Iconsaxoutlinehome2,
  Notificationindigoa200,
  Iconsaxtwotoneheart,
  Iconsaxtwotoneprofile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.type,
  });

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
