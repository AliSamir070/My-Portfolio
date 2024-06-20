import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/asset_manager.dart';
import 'package:my_portfolio/features/home/presentation/widgets/mobile/sections/contact/contact_item.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/constants.dart';
import '../../../../../../../core/utils/color_manager.dart';
import '../../../../../../../core/utils/strings_manager.dart';

class ContactSectionMobile extends StatelessWidget {
  const ContactSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(StringsManager.contactMe,style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: 24.h,),
        Container(
          padding: REdgeInsets.all(16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    ColorManager.secondaryColor,
                    ColorManager.primaryColor
                  ]
              ),
              borderRadius: BorderRadius.circular(20.r)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ContactItem(
                        title: StringsManager.Linkedin,
                        imagePath: AssetManager.linkedin,
                        onTap: (){
                          launchUrl(Uri.parse(Constants.linkedInUrl));
                        }
                    ),
                  ),
                  Expanded(
                    child: ContactItem(
                        title: StringsManager.Github,
                        imagePath: AssetManager.github,
                        onTap: (){
                          launchUrl(Uri.parse(Constants.githubUrl));
                        }
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(
                    child: ContactItem(
                        title: StringsManager.upwork,
                        imagePath: AssetManager.upwork,
                        onTap: (){
                          launchUrl(Uri.parse(Constants.upworkUrl));
                        }
                    ),
                  ),
                  Expanded(
                    child: ContactItem(
                        title: StringsManager.freelancer,
                        imagePath: AssetManager.freelancer,
                        onTap: (){
                          launchUrl(Uri.parse(Constants.freelancerUrl));
                        }
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              ContactItem(
                  title: Constants.phone,
                  imagePath: AssetManager.phone,
                  onTap: (){
                    launchUrl(Uri.parse("tel:${Constants.phone}"));
                  }
              ),
              SizedBox(height: 16.h,),
              ContactItem(
                  title: Constants.email,
                  imagePath: AssetManager.email,
                  onTap: (){
                    launchUrl(Uri.parse("mailto:${Constants.email}"));
                  }
              ),

            ],
          ),
        )
      ],
    );
  }
}
