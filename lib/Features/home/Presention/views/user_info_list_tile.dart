import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Features/home/Data/user_info_list_tile_model.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,required this.userInfoListTileModel
      });
  final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoListTileModel.image),
        title: Text(
          userInfoListTileModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoListTileModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
