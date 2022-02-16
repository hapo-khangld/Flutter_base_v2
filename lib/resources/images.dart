class ImageDef {
  static ImageDef? _instance;

  ImageDef._();

  static ImageDef get instance {
    _instance ??= ImageDef._();

    return _instance!;
  }

  final String imageError = 'assets/images/dayaway_plash.png';
}
