import '../core/constants.dart';
import '../core/shared_pref/shared_pref_manager.dart';

class SharedPreferenceService {
  //

  final SharedPrefManager _sharedPrefManager;

  SharedPreferenceService(this._sharedPrefManager);

  // General Methods: ----------------------------------------------------------
  Future<String?> get authToken async {
    return _sharedPrefManager.getData(PreferencesKey.authToken);
  }

  Future<bool> saveAuthToken(String authToken) async {
    return _sharedPrefManager.setData(PreferencesKey.authToken, authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPrefManager.removeData(PreferencesKey.authToken);
  }
}
