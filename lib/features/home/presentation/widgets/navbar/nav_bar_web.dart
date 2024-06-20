import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/asset_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../manager/home_cubit.dart';
import 'NavBarWebActionItem.dart';

class NavBarWeb extends StatelessWidget implements PreferredSizeWidget {

  const NavBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorManager.secondaryColor,
                  ColorManager.primaryColor,
                ]
            )
        ),
      ),
      title: Row(
        children: [
          SvgPicture.asset(
            AssetManager.flutter,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(width: 10.w,),
          Flexible(
            child: Text(
              "Ali Samir",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          SvgPicture.asset(
            AssetManager.android,
            height: 24.h,
            width: 24.w,
          ),
        ],
      ),
      actions: [
        NavBarActionItem(
          title: StringsManager.home,
          imagePath: AssetManager.home,
          onTap: (){
            HomeCubit.get(context).scrollToItemWeb(0);
          },
        ),
        NavBarActionItem(
          title: StringsManager.services,
          imagePath: AssetManager.smile,
          onTap: (){
            HomeCubit.get(context).scrollToItemWeb(1);
          },
        ),
        NavBarActionItem(
          title: StringsManager.works,
          imagePath: AssetManager.works,
          onTap: (){
            HomeCubit.get(context).scrollToItemWeb(2);
          },
        ),
        NavBarActionItem(
          title: StringsManager.contact,
          imagePath: AssetManager.contact,
          onTap: (){
            HomeCubit.get(context).scrollToItemWeb(3);
          },
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.h);
}
