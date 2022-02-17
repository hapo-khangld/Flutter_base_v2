enum EnvType { dev, qa, staging, production }

abstract class PreferencesKey {
  static const String authToken = "authToken";
  static const String currentLanguage = "currentLanguage";
}

abstract class SortTypeEnum {
  static const String asc = "ASC";
  static const String desc = "DESC";
}

abstract class PackageTypeEnum {
  static const String standard = "STANDARD";
  static const String corporate = "CORPORATE";
}
