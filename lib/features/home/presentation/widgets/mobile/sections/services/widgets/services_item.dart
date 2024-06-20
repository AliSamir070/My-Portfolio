import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/features/home/data/models/service_model.dart';

import '../../../../../../../../core/utils/color_manager.dart';

class ServiceItemMobile extends StatelessWidget {
  final ServiceModel serviceModel;
  const ServiceItemMobile({super.key,required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(serviceModel.imagePath,height: 70.h,width: 70.w,),
            SizedBox(height: 24.h,),
            Text(
              serviceModel.name,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 24.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AssetManager.check,
                  height: 24.h,
                  width: 24.w,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  child: Text(
                    serviceModel.description,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
