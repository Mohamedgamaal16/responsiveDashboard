import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/drawer_item.dart';
import 'package:responsive_dashboard/core/utils/images.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});
  static List<DrawerItemModel> items = const [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statitics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    )
  ];

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int? activeIndex ;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: DrawerItemList.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: DrawerItem(
                  isActive: activeIndex == index,
                  drawerItemModel: DrawerItemList.items[index]));
        });
  }
}
