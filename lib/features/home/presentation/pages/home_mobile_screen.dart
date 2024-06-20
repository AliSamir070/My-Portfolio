import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/core/utils/color_manager.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';
import 'package:my_portfolio/features/home/presentation/manager/home_cubit.dart';
import 'package:my_portfolio/features/home/presentation/widgets/mobile/sections/home/home_section_mobile.dart';
import 'package:my_portfolio/features/home/presentation/widgets/mobile/sections/projects/projects_section_mobile.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/mobile/mobile_drawer.dart';
import '../widgets/mobile/profile_photo_mobile.dart';
import '../widgets/mobile/sections/contact/contact_section_mobile.dart';
import '../widgets/mobile/sections/services/services_section_mobile.dart';
import '../widgets/navbar/nav_bar_mobile.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);
  static var scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> sections = [
    HomeSectionMobile(),
    ServicesSectionMobile(),
    ProjectsSectionMobile(),
    ContactSectionMobile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
        key: scaffoldKey,
        appBar: NavBarMobile(scaffoldkey: scaffoldKey,),
        drawer: Drawer(
          child: MobileDrawer(),
        ),
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16),
          child: ScrollablePositionedList.separated(
              itemCount: sections.length,
              itemScrollController: HomeCubit.get(context).itemScrollController,
              itemBuilder: (context, index) => sections[index],
              separatorBuilder: (context, index) => SizedBox(height: 24.h,),
          ),
        ),
      ),
    );
  }
}
