import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/utils/strings_manager.dart';
import 'ServiceWebItem.dart';

class ServicesSectionWeb extends StatelessWidget {
  const ServicesSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(StringsManager.whatCanIDo,style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: 16.h,),
          Text(StringsManager.whatCanIDoDesc,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 16.spMin
            ),),
          SizedBox(height: 24.h,),
          CarouselSlider.builder(
              options: CarouselOptions(
                  height: 350.h,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  autoPlay: true
              ),
              itemBuilder: (context, index,page) => ServiceWebItem(serviceModel: Constants.services[index]),
              itemCount: Constants.services.length
          )

        ],
      ),
    );
  }
}
