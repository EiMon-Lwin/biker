import 'package:shared_preferences/shared_preferences.dart';
import 'local_storage.dart';

class LocalStroageImp implements LocalStorage {
  const LocalStroageImp(this.storage);

  final SharedPreferences storage;
  
  @override
  Future<bool?> getBool(String key) async {
    return storage.getBool(key);
  }
  
  @override
  Future<String?> getString(String key) async {
    return storage.getString(key);
  }
  
  @override
  Future<bool> setBool(String key, bool? value) async {
    if(value == null) return await remove(key);
    return await storage.setBool(key, value);
  }
  
  @override
  Future<bool> setString(String key, String? value) async {
    if(value == null) return await remove(key);
    return await storage.setString(key, value);
  }
  
  @override
  Future<bool> remove(String key) async {
    return await storage.remove(key);
  }
}
