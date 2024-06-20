import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/utils/strings_manager.dart';
import 'ProjectItemWeb.dart';

class ProjectsSectionWeb extends StatelessWidget {
  const ProjectsSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(StringsManager.projects,style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: 24.h,),
        CarouselSlider.builder(
            options: CarouselOptions(
                height: 525.h,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                autoPlay: true
            ),
            itemBuilder: (context, index,page) => ProjectItemWeb(projectModel: Constants.projects[index]),
            itemCount: Constants.projects.length
        )
      ],
    );
  }
}
