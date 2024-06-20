import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/core/utils/color_manager.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';
import 'package:my_portfolio/features/home/presentation/manager/home_cubit.dart';

import 'mobile_drawer_item.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.only(left: 16,right: 16,top: 50),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MobileDrawerItem(
            title: StringsManager.home,
            imagePath: AssetManager.home,
            onTap: (){
              HomeCubit.get(context).scrollToItem(0);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 24.h,),
          Divider(),
          SizedBox(height: 24.h,),
          MobileDrawerItem(
            title: StringsManager.services,
            imagePath: AssetManager.smile,
            onTap: (){
              HomeCubit.get(context).scrollToItem(1);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 24.h,),
          Divider(),
          SizedBox(height: 24.h,),
          MobileDrawerItem(
            title: StringsManager.works,
            imagePath: AssetManager.works,
            onTap: (){
              HomeCubit.get(context).scrollToItem(2);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 24.h,),
          Divider(),
          SizedBox(height: 24.h,),
          MobileDrawerItem(
            title: StringsManager.contact,
            imagePath: AssetManager.contact,
            onTap: (){
              HomeCubit.get(context).scrollToItem(3);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
