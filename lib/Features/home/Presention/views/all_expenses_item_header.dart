import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageBackGroundColor,
      this.imagecolour});
  final String image;
  final Color? imageBackGroundColor, imagecolour;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: imageBackGroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imagecolour ?? const Color(0xFF4DB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Center(
          child: Transform.rotate(
              angle: -1.57079633,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: imagecolour ?? const Color(0xFF064061),
              )),
        )
      ],
    );
  }
}
