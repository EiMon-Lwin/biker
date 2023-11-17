import 'package:local_storage/local_storage.dart';

abstract class SecureLocalStorage extends LocalStorage {
  //Dispose
  Future<bool> remove(String key);

  //String
  Future<String?> getString(String key);
  
  Future<bool> setString(String key, String? value);

  //Boolean
  Future<bool?> getBool(String key);
  
  Future<bool> setBool(String key, bool? value);
}