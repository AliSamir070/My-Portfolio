import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/features/home/presentation/widgets/desktop/sections/services/ServiceWebItem.dart';
import 'package:my_portfolio/features/home/presentation/widgets/mobile/sections/services/widgets/services_item.dart';

import '../../../../../../../core/utils/strings_manager.dart';

class ServicesSectionMobile extends StatelessWidget {
  const ServicesSectionMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
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
                height: 280.h,
                scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
              autoPlay: true
            ),
            itemBuilder: (context, index,page) => kIsWeb
                ?ServiceWebItem(serviceModel: Constants.services[index])
                :ServiceItemMobile(serviceModel: Constants.services[index]),
            itemCount: Constants.services.length
        )

      ],
    );
  }
}
