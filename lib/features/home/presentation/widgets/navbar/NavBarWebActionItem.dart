import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/utils/color_manager.dart';

class NavBarActionItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final void Function() onTap;
  const NavBarActionItem({super.key,required this.imagePath , required this.title , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 16),
      child: IconButton(
        onPressed: onTap,
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              height: 30.h,
              width: 30.w,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            SizedBox(width: 5.w,),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontSize: 16.spMin
              ),
            )
          ],
        ),
      ),
    );
  }
}
