import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  const ResponsiveLayout({Key? key,required this.mobile,required this.desktop , required this.tablet}) : super(key: key);

  static bool isMobile(BuildContext context)=>MediaQuery.of(context).size.width < 650;
  static bool isDesktop(BuildContext context)=>MediaQuery.of(context).size.width >= 1100;
  static bool isTablet(BuildContext context)=>MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<650){
            return mobile;
          }else if(constraints.maxWidth>=650 && constraints.maxWidth<1100){
            return tablet;
          }else{
            return desktop;
          }
        }
    );
  }
}
