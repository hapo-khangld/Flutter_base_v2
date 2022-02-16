import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';

class Helper {
  //
  Helper._();

  /// Core helper:------------------------------------------------------------
  static Future<bool> isOffine() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return false;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return false;
    }
    return true;
  }

  static Future<void> initEasyLocalization() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableBuildModes = [];
  }

  //
}
