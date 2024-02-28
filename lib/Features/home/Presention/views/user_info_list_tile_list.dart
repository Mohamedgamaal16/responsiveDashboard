import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/user_info_list_tile_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/user_info_list_tile.dart';
import 'package:responsive_dashboard/core/utils/images.dart';

class UserInfoListTileList extends StatelessWidget {
  const UserInfoListTileList({super.key});
  static List<UserInfoListTileModel> items = const [
    UserInfoListTileModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoListTileModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com '),
    UserInfoListTileModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoListTileModel: e)))
            .toList(),
      ),
    );
  }
}
