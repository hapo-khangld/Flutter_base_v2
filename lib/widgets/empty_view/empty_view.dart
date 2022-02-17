import 'package:dayaway/resources/R.dart';
import 'package:flutter/material.dart';

import '../image_widget/image_widget.dart';

class EmptyView extends StatelessWidget {
  final VoidCallback? onPressed;
  const EmptyView({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ImgView.load(
        R.images.icNoData,
        fit: BoxFit.contain,
      ),
    );
  }
}
