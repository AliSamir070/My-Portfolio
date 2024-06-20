import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/utils/asset_manager.dart';
import '../../../../../../../core/utils/color_manager.dart';
import '../../../../../data/models/service_model.dart';

class ServiceWebItem extends StatelessWidget {
  final ServiceModel serviceModel;
  const ServiceWebItem({super.key,required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
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
                fontSize: 18.spMin
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
                        fontSize: 14.spMin,
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
