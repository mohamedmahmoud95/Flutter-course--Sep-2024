import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  // Private constructor
  SharedPreferencesService._();

  // Singleton instance
  static final SharedPreferencesService _instance = SharedPreferencesService._();

  // Getter for the singleton instance
  static SharedPreferencesService get instance => _instance;

  SharedPreferences? _prefs;

  // Initialize SharedPreferences
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // Save a string value
  Future<void> saveString(String key, String value) async {
    if (_prefs != null) {
      await _prefs!.setString(key, value);
    }
  }

  // Get a string value
  Future<String?> getString(String key) async {
    return _prefs?.getString(key);
  }

  // Save an integer value
  Future<void> saveInt(String key, int value) async {
    if (_prefs != null) {
      await _prefs!.setInt(key, value);
    }
  }

  // Get an integer value
  Future<int?> getInt(String key) async {
    return _prefs?.getInt(key);
  }

  // Save a boolean value
  Future<void> saveBool(String key, bool value) async {
    if (_prefs != null) {
      await _prefs!.setBool(key, value);
    }
  }

  // Get a boolean value
  Future<bool?> getBool(String key) async {
    return _prefs?.getBool(key);
  }

  // Remove a value
  Future<void> remove(String key) async {
    if (_prefs != null) {
      await _prefs!.remove(key);
    }
  }

  // Clear all data
  Future<void> clear() async {
    if (_prefs != null) {
      await _prefs!.clear();
    }
  }
}