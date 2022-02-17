import 'package:dayaway/core/utils/extensions.dart';
import 'package:dayaway/resources/R.dart';
import 'package:dayaway/resources/numbers.dart';
import 'package:dayaway/resources/styles.dart';
import 'package:dayaway/widgets/widgets.dart';
import 'package:flutter/material.dart';

enum TypeAlert {
  success,
  fail,
  confirm,
}

class _CustomAlertDialog extends StatelessWidget {
  const _CustomAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.firstButtonText,
    required this.firstButtonFunction,
    this.typeAlert = TypeAlert.confirm,
    this.secondButtonText = "",
    this.secondButtonFunction,
    this.titleAlign = TextAlign.center,
    this.contentAlign = TextAlign.center,
    this.allowPopScope = true,
  }) : super(key: key);

  final String title;
  final String content;
  final String firstButtonText;
  final Function firstButtonFunction;
  final String secondButtonText;
  final Function? secondButtonFunction;

  final double _radius = 7;
  final double _spacing = 8.0;
  final double _buttonHeight = 50.0;
  final TextAlign titleAlign;
  final TextAlign contentAlign;
  final bool allowPopScope;
  final TypeAlert typeAlert;

  Widget _renderIconAlert() {
    switch (typeAlert) {
      case TypeAlert.success:
        return ImgView.load(
          R.images.icSuccess,
          fit: BoxFit.contain,
        );
      case TypeAlert.fail:
        return ImgView.load(
          R.images.icFailed,
          fit: BoxFit.contain,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _renderTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: _spacing,
        right: _spacing,
        top: _spacing,
        bottom: _spacing,
      ),
      child: Column(
        children: [
          typeAlert != TypeAlert.confirm
              ? SizedBox(
                  height: dimen_29.h,
                )
              : const SizedBox.shrink(),
          _renderIconAlert(),
          SizedBox(
            height: dimen_13.h,
          ),
          Text(
            title,
            style: TextStyleDef.textTitleTextStyle.sp,
          ),
        ],
      ),
    );
  }

  Widget _renderContent() {
    return Container(
      margin: EdgeInsets.only(
        left: dimen_16.w,
        right: dimen_16.w,
        top: _spacing,
        bottom: _spacing,
      ),
      child: Text(
        content,
        textScaleFactor: 1.0,
        overflow: TextOverflow.ellipsis,
        textAlign: contentAlign,
        softWrap: true,
        maxLines: 100,
        style: TextStyleDef.textBodyTextStyle.sp,
      ),
    );
  }

  Widget _renderButton(bool _existSecondButton) {
    return Padding(
      padding: EdgeInsets.only(
        left: dimen_16.w,
        right: dimen_16.w,
        top: dimen_10.h,
        bottom: dimen_24.h,
      ),
      child: Row(
        children: <Widget>[
          // Second button
          (_existSecondButton
              ? Expanded(
                  child: OutlinedButton(
                    onPressed: () => secondButtonFunction!.call(),
                    child: Text(
                      secondButtonText,
                      style: TextStyleDef.textButtonTextStyle.sp
                          .copyWith(color: ColorsDef.kPrimary),
                    ),
                  ),
                )
              : Container()),
          // Vertical Divider
          (_existSecondButton
              ? SizedBox(
                  width: dimen_15.w,
                )
              : Container()),
          // First button
          Expanded(
            child: TextButton(
              onPressed: () {
                firstButtonFunction!.call();
              },
              child: Text(
                firstButtonText,
                style: TextStyleDef.textButtonTextStyle.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool _existSecondButton = false;
    if (secondButtonText.isNotEmpty && secondButtonFunction != null) {
      _existSecondButton = true;
    }

    Widget element = Container(
      constraints: const BoxConstraints(maxWidth: 350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(_radius)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Title
          _renderTitle(),
          // Content
          _renderContent(),
          // Button
          _renderButton(_existSecondButton),
        ],
      ),
    );
    return WillPopScope(
      onWillPop: () {
        return Future.value(allowPopScope);
      },
      child: element,
    );
  }
}

Future<T?> showCustomSuccessAlertDialog<T>(
  BuildContext context, {
  Key? key,
  required title,
  required content,
  required firstButtonText,
  required firstButtonFunction,
  secondButtonText = "",
  secondButtonFunction,
  TextAlign titleAlign = TextAlign.center,
  TextAlign contentAlign = TextAlign.center,
  bool barrierDismissible = true,
  bool allowPopScope = true,
}) async {
  return await showGeneralDialog(
    context: context,
    barrierLabel: "Label",
    barrierDismissible: barrierDismissible,
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: anim1,
            curve: Curves.fastOutSlowIn,
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return Material(
        type: MaterialType.transparency,
        child: Align(
          alignment: Alignment.center,
          child: _CustomAlertDialog(
            title: title,
            content: content,
            firstButtonText: firstButtonText,
            firstButtonFunction: firstButtonFunction,
            secondButtonText: secondButtonText,
            secondButtonFunction: secondButtonFunction,
            titleAlign: titleAlign,
            contentAlign: contentAlign,
            allowPopScope: allowPopScope,
            typeAlert: TypeAlert.success,
          ),
        ),
      );
    },
  );
}

Future<T?> showCustomFailAlertDialog<T>(
  BuildContext context, {
  Key? key,
  required title,
  required content,
  required firstButtonText,
  required firstButtonFunction,
  secondButtonText = "",
  secondButtonFunction,
  TextAlign titleAlign = TextAlign.center,
  TextAlign contentAlign = TextAlign.center,
  bool barrierDismissible = true,
  bool allowPopScope = true,
}) async {
  return await showGeneralDialog(
    context: context,
    barrierLabel: "Label",
    barrierDismissible: barrierDismissible,
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: anim1,
            curve: Curves.fastOutSlowIn,
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return Material(
        type: MaterialType.transparency,
        child: Align(
          alignment: Alignment.center,
          child: _CustomAlertDialog(
            title: title,
            content: content,
            firstButtonText: firstButtonText,
            firstButtonFunction: firstButtonFunction,
            secondButtonText: secondButtonText,
            secondButtonFunction: secondButtonFunction,
            titleAlign: titleAlign,
            contentAlign: contentAlign,
            allowPopScope: allowPopScope,
            typeAlert: TypeAlert.fail,
          ),
        ),
      );
    },
  );
}

Future<T?> showCustomConfirmAlertDialog<T>(
  BuildContext context, {
  Key? key,
  required title,
  required content,
  required firstButtonText,
  required firstButtonFunction,
  secondButtonText = "",
  secondButtonFunction,
  TextAlign titleAlign = TextAlign.center,
  TextAlign contentAlign = TextAlign.center,
  bool barrierDismissible = true,
  bool allowPopScope = true,
}) async {
  return await showGeneralDialog(
    context: context,
    barrierLabel: "Label",
    barrierDismissible: barrierDismissible,
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: anim1,
            curve: Curves.fastOutSlowIn,
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, anim1, anim2) {
      return Material(
        type: MaterialType.transparency,
        child: Align(
          alignment: Alignment.center,
          child: _CustomAlertDialog(
            title: title,
            content: content,
            firstButtonText: firstButtonText,
            firstButtonFunction: firstButtonFunction,
            secondButtonText: secondButtonText,
            secondButtonFunction: secondButtonFunction,
            titleAlign: titleAlign,
            contentAlign: contentAlign,
            allowPopScope: allowPopScope,
            typeAlert: TypeAlert.confirm,
          ),
        ),
      );
    },
  );
}
