import 'package:dayaway/core/utils/extensions.dart';
import 'package:dayaway/resources/numbers.dart';
import 'package:dayaway/resources/styles.dart';
import 'package:dayaway/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PopUpAlert extends StatelessWidget {
  final String title;
  final String content;
  final String icon;
  final VoidCallback? actionCancel;
  final VoidCallback? actionAgree;

  const PopUpAlert({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    this.actionCancel,
    this.actionAgree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsDef.white,
      padding: EdgeInsets.symmetric(
        horizontal: dimen_16.w,
        vertical: dimen_24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ImgView.load(
            icon,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: dimen_13.h,
          ),
          Text(
            title,
            style: TextStyleDef.textTitleTextStyle.sp,
          ),
          SizedBox(
            height: dimen_8.h,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyleDef.textBodyTextStyle.sp,
          ),
          SizedBox(
            height: dimen_16.h,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: actionCancel,
                  child: Text(
                    'Cancel',
                    style: TextStyleDef.textButtonTextStyle.sp
                        .copyWith(color: ColorsDef.kPrimary),
                  ),
                ),
              ),
              SizedBox(
                width: dimen_16.w,
              ),
              Expanded(
                child: TextButton(
                  onPressed: actionAgree,
                  child: Text(
                    'OK',
                    style: TextStyleDef.textButtonTextStyle.sp,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
