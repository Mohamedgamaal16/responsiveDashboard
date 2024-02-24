import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/drawer_item.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/drawer_items_list.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/user_info_list_tile.dart';
import 'package:responsive_dashboard/core/utils/images.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: "demo@gmail.com"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemList(),
          SliverFillRemaining(
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerItem(
                  isActive: false,
                  drawerItemModel: DrawerItemModel(
                    title: 'settings',
                    image: Assets.imagesSettings,
                  ),
                ),
                DrawerItem(
                  isActive: false,
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
