import 'package:dayaway/core/utils/extensions.dart';
import 'package:dayaway/resources/R.dart';
import 'package:dayaway/resources/numbers.dart';
import 'package:dayaway/resources/styles.dart';
import 'package:dayaway/widgets/custom_alert_dialog/custom_alert_dialog.dart';
import 'package:dayaway/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showCustomSuccessAlertDialog(
                  context,
                  firstButtonText: R.strings.cancelText,
                  secondButtonText: R.strings.okText,
                  title: R.strings.titleAlertText,
                  content: R.strings.contentAlertText,
                  firstButtonFunction: () {},
                  secondButtonFunction: () {},
                );
              },
              child: Text(
                'show alert success',
                style: TextStyleDef.textButtonTextStyle.sp,
              ),
            ),
            SizedBox(
              height: dimen_10.h,
            ),
            TextButton(
              onPressed: () {
                showCustomFailAlertDialog(
                  context,
                  firstButtonText: R.strings.cancelText,
                  secondButtonText: R.strings.okText,
                  title: R.strings.titleAlertText,
                  content: R.strings.contentAlertText,
                  firstButtonFunction: () {},
                  secondButtonFunction: () {},
                );
              },
              child: Text(
                'show alert fail',
                style: TextStyleDef.textButtonTextStyle.sp,
              ),
            ),
            SizedBox(
              height: dimen_10.h,
            ),
            TextButton(
              onPressed: () {
                showCustomConfirmAlertDialog(
                  context,
                  firstButtonText: R.strings.cancelText,
                  secondButtonText: R.strings.okText,
                  title: R.strings.titleAlertText,
                  content: R.strings.contentAlertText,
                  firstButtonFunction: () {},
                  secondButtonFunction: () {},
                );
              },
              child: Text(
                'show alert confirm',
                style: TextStyleDef.textButtonTextStyle.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
