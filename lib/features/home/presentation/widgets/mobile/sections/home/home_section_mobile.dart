import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../../../../core/constants.dart';
import '../../../../../../../core/utils/asset_manager.dart';
import '../../../../../../../core/utils/color_manager.dart';
import '../../../../../../../core/utils/strings_manager.dart';
import '../../profile_photo_mobile.dart';

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePhotoMobile(),
        SizedBox(height: 100.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                StringsManager.welcome,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(width: 10.w,),
            SizedBox(
              height: 30.h,
              width: 30.w,
              child: Lottie.asset(
                  AssetManager.hiAnimation,
                  animate: true,
                  repeat: true
              ),
            )
          ],
        ),
        SizedBox(height: 8.h,),
        AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                  StringsManager.experience,
                  textStyle: Theme.of(context).textTheme.titleLarge
              ),
              TypewriterAnimatedText(
                  StringsManager.flutterDeveloper,
                  textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ColorManager.flutterColor
                  )
              ),
              TypewriterAnimatedText(
                  StringsManager.androidDeveloper,
                  textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ColorManager.androidColor
                  )
              ),
              TypewriterAnimatedText(
                  StringsManager.freelancer,
                  textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ColorManager.primaryColor
                  )
              ),
            ]
        ),
        SizedBox(height: 24.h,),
        Container(
          padding: REdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient: LinearGradient(colors: [
                ColorManager.secondaryColor,
                ColorManager.primaryColor,
              ])
          ),
          child: Column(
            children: [
              Text(
                StringsManager.summary,
                softWrap: true,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 18.spMin
                ),
              ),
              SizedBox(height: 24.h,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)
                    )
                  ),
                  onPressed: (){
                    openUrl(Constants.cvLink);
                  },
                  child: Text(
                    StringsManager.downloadCv,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 16.spMin
                    ),
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
