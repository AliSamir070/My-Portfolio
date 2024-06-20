import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/utils/color_manager.dart';

class MobileDrawerItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final void Function() onTap;
  const MobileDrawerItem({super.key,required this.imagePath , required this.title , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            height: 30.h,
            width: 30.w,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
          SizedBox(width: 16.w,),
          Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              )
          )
        ],
      ),
    );
  }
}
