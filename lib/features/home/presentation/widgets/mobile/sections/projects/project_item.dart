import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';
import 'package:my_portfolio/features/home/data/models/project_model.dart';

import '../../../../../../../core/utils/color_manager.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectItem({super.key,required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(projectModel.playStore!= null){
          if(Platform.isIOS){
            openUrl(projectModel.appStore!);
          }else{
            openUrl(projectModel.playStore!);
          }
        }else if(projectModel.github != null){
          openUrl(projectModel.github!);
        }
      },
      child: Container(
        width: ScreenUtil().screenWidth*0.95,
        padding: REdgeInsets.all(16),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  ColorManager.secondaryColor,
                  ColorManager.primaryColor
                ]
            ),
            borderRadius: BorderRadius.circular(20.r)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(projectModel.imagePath,height:150.h ,fit: BoxFit.fitHeight,)),
            SizedBox(height: 16.h,),
            Text(projectModel.title,style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white
            ),),
            SizedBox(height: 24.h,),
            projectModel.isAndroid
                ?Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.r,
                    child: SvgPicture.asset(AssetManager.android,height: 24.h,width: 24.w,)),
                SizedBox(width: 10.w,),
                Text(StringsManager.android,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontSize: 16.spMin
                ),)
              ],
            )
                :Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.r,
                    child: SvgPicture.asset(AssetManager.flutter,height: 24.h,width: 24.w,)),
                SizedBox(width: 10.w,),
                Text(StringsManager.flutter,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                ),)
              ],
            ),
            SizedBox(height: 16.h,),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AssetManager.check,
                    height: 30.h,
                    width: 30.w,
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Text(
                      projectModel.description,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Text(StringsManager.tabView,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationThickness: 2.w,
                color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
