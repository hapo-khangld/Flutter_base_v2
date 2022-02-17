class ImageDef {
  static ImageDef? _instance;

  ImageDef._();

  static ImageDef get instance {
    _instance ??= ImageDef._();

    return _instance!;
  }

  final String imageError = 'assets/images/dayaway_plash.png';

  /// ICONS
  final String icNoData = 'assets/images/icons/ic_no_data.svg';
  final String icContentError = 'assets/images/icons/ic_content_error.svg';
  final String icSuccess = 'assets/images/icons/ic_success.svg';
  final String icFailed = 'assets/images/icons/ic_failed.svg';

}
