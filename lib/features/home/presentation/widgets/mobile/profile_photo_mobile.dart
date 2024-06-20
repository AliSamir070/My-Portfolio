import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/asset_manager.dart';
import '../../../../../core/utils/color_manager.dart';

class ProfilePhotoMobile extends StatefulWidget {
  const ProfilePhotoMobile({super.key});

  @override
  State<ProfilePhotoMobile> createState() => _ProfilePhotoMobileState();
}

class _ProfilePhotoMobileState extends State<ProfilePhotoMobile> with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [
                ColorManager.secondaryColor,
                ColorManager.primaryColor,
              ]
          )
      ),
      child: CircleAvatar(
        radius: 100.r,
        backgroundImage: AssetImage(AssetManager.myPhoto),
      ),
    ).animate(
      autoPlay: true,
      controller:animationController,
      onComplete: (controller) {
        animationController.repeat();
      },
    ).moveY(
        begin: 0,
        end: 50.h,
        duration: Duration(milliseconds: 1500)
    ).then(delay: 200.ms).moveY(
        begin: 50.h,
        end: 0,
        duration: Duration(milliseconds: 1500)
    );
  }
}
