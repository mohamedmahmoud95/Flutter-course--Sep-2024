import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  // Singleton instance
  static final SecureStorageService _instance = SecureStorageService._internal();

  // Factory constructor to return the singleton instance
  factory SecureStorageService() {
    return _instance;
  }

  // Private constructor
  SecureStorageService._internal();

  // Secure storage instance
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  // Save a key-value pair
  Future<void> writeSecureData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  // Read data by key
  Future<String?> readSecureData(String key) async {
    return await _storage.read(key: key);
  }

  // Delete data by key
  Future<void> deleteSecureData(String key) async {
    await _storage.delete(key: key);
  }

  // Check if a key exists
  Future<bool> containsKey(String key) async {
    final keys = await _storage.containsKey(key: key);
    return keys;
  }

  // Delete all secure data
  Future<void> deleteAllData() async {
    await _storage.deleteAll();
  }
}