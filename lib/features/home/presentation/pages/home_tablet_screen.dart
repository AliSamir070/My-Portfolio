import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/widgets/navbar/nav_bar_mobile.dart';

class HomeTabletScreen extends StatelessWidget {
  const HomeTabletScreen({Key? key}) : super(key: key);
  static var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: NavBarMobile(scaffoldkey: scaffoldKey),
    );
  }
}
