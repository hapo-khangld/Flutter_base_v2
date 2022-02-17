import 'package:dayaway/core/utils/extensions.dart';
import 'package:dayaway/resources/R.dart';
import 'package:dayaway/resources/styles.dart';
import 'package:dayaway/widgets/image_widget/image_widget.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String? error;
  final VoidCallback? onPressed;
  const ErrorView({
    Key? key,
    this.onPressed,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImgView.load(
            R.images.icContentError,
            fit: BoxFit.contain,
          ),
          Text(
            error ?? R.strings.noContentFound,
            style: TextStyleDef.textContentErrorTextStyle.sp,
          )
        ],
      ),
    );
  }
}
