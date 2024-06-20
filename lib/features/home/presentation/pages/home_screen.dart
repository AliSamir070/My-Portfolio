import 'package:flutter/material.dart';
import 'package:my_portfolio/core/reusable_components/responsive_layout.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_mobile_screen.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_tablet_screen.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_web_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: HomeMobileScreen(),
        desktop: HomeWebScreen(),
        tablet: HomeMobileScreen()
    );
  }
}
