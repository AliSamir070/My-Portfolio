import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/config/router.dart';
import 'package:my_portfolio/core/utils/routes_manager.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_screen.dart';

import 'config/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      builder: (context,child)=>MaterialApp(
        title: 'Portfolio',
        onGenerateRoute: MyRouter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme:  AppTheme.lightTheme,
        initialRoute: "/",
      ),
    );
  }
}