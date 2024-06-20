import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/core/utils/strings_manager.dart';

class ContactItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final void Function() onTap;
  const ContactItem({super.key,required this.title , required this.imagePath , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: (){
        Clipboard.setData(ClipboardData(text: title)).then((value){
          showToast(StringsManager.copied);
        });
      },
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            imagePath,
            height: 30.h,
            width: 30.w,
          ),
          SizedBox(width: 16.w,),
          Flexible(
            child: Text(title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontSize: 16.spMin
            ),),
          )
        ],
      ),
    );
  }
}
