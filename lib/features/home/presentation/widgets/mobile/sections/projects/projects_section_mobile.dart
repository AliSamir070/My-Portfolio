import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';
import 'package:my_portfolio/features/home/presentation/widgets/desktop/sections/projects/ProjectItemWeb.dart';
import 'package:my_portfolio/features/home/presentation/widgets/mobile/sections/projects/project_item.dart';

class ProjectsSectionMobile extends StatelessWidget {
  const ProjectsSectionMobile({super.key});

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
            itemBuilder: (context, index,page) => kIsWeb
                ?ProjectItemWeb(projectModel: Constants.projects[index])
                :ProjectItem(projectModel: Constants.projects[index]),
            itemCount: Constants.projects.length
        )
      ],
    );
  }
}
