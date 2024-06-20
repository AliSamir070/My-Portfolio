import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/presentation/widgets/desktop/sections/services/ServicesSectionWeb.dart';
import 'package:my_portfolio/features/home/presentation/widgets/navbar/nav_bar_web.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../manager/home_cubit.dart';
import '../widgets/desktop/sections/home/HomeSectionWeb.dart';
import '../widgets/desktop/sections/projects/ProjectsSectionWeb.dart';
import '../widgets/mobile/sections/contact/contact_section_mobile.dart';
import '../widgets/mobile/sections/home/home_section_mobile.dart';
import '../widgets/mobile/sections/projects/projects_section_mobile.dart';
import '../widgets/mobile/sections/services/services_section_mobile.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({Key? key}) : super(key: key);
  static List<Widget> sections = [
    HomeSectionWeb(),
    ServicesSectionWeb(),
    ProjectsSectionWeb(),
    ContactSectionMobile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
        appBar: const NavBarWeb(),
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16),
          child: ScrollablePositionedList.separated(
            itemCount: sections.length,
            itemScrollController: HomeCubit.get(context).itemWebScrollController,
            itemBuilder: (context, index) => sections[index],
            separatorBuilder: (context, index) => SizedBox(height: 48.h,),
          ),
        ),
      ),
    );
  }
}
