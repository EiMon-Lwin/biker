import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'secure_local_storage.dart';

class SecureLocalStorageImpl implements SecureLocalStorage {
  final FlutterSecureStorage storage;
  const SecureLocalStorageImpl(this.storage);
  
  @override
  Future<String?> getString(String key) {
    return storage.read(key: key);
  }

  @override
  Future<bool> setString(String key, String? value) async {
    try {
      await storage.write(key: key, value: value);
      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<bool?> getBool(String key) async {
    final value = await storage.read(key: key);
    if (value == null) return null;
    return bool.tryParse(value);
  }

  @override
  Future<bool> remove(String key) async {
    try {
      await storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> setBool(String key, bool? value) async {
    try {
      await storage.write(key: key, value: value?.toString());
      return true;
    } catch (e) {
      return false;
    }
  }
}