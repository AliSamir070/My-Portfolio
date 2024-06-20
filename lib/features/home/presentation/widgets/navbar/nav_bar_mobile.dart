import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';

import '../../../../../core/utils/color_manager.dart';

class NavBarMobile extends StatelessWidget implements PreferredSizeWidget{
  final GlobalKey<ScaffoldState> scaffoldkey;
  const NavBarMobile({super.key,required this.scaffoldkey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: (){
            scaffoldkey.currentState?.openDrawer();
          },
          icon: SvgPicture.asset(
            AssetManager.menu,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          )),
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.h);
}
