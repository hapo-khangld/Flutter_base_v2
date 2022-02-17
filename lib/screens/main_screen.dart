import 'package:dayaway/core/utils/extensions.dart';
import 'package:dayaway/resources/R.dart';
import 'package:dayaway/resources/numbers.dart';
import 'package:dayaway/resources/styles.dart';
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      insetPadding:
                          EdgeInsets.symmetric(horizontal: dimen_20.w),
                      contentPadding: const EdgeInsets.all(dimen_0),
                      content: PopUpAlert(
                        title: 'Lorem Ipsum',
                        content:
                            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                        icon: R.images.icSuccess,
                      ),
                    );
                  },
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      insetPadding:
                      EdgeInsets.symmetric(horizontal: dimen_20.w),
                      contentPadding: const EdgeInsets.all(dimen_0),
                      content: PopUpAlert(
                        title: 'Lorem Ipsum',
                        content:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                        icon: R.images.icFailed,
                      ),
                    );
                  },
                );
              },
              child: Text(
                'show alert fail',
                style: TextStyleDef.textButtonTextStyle.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
