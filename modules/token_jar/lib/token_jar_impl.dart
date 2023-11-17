import 'dart:convert';
import 'package:core/core.dart';
import 'package:authentication/authentication.dart';
import 'package:secure_local_storage/secure_local_storage.dart';

import 'token_jar.dart';

class TokenJarImpl implements TokenJar {
  final SecureLocalStorage storage;

  const TokenJarImpl(this.storage);

  static const String _accessTokenKey = "ACCESS_TOKEN";

  @override
  Future<DataState<AccessTokenEntity>> get() async {
    try {
      final data = await storage.getString(_accessTokenKey);
      if (data?.isNotEmpty != true) throw InvalidDataException(data: data);
      return DataSuccess(AccessTokenModel.fromJson(json.decode(data!)));
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<void>> save(AccessTokenEntity token) async {
    try {
      await storage.setString(
        _accessTokenKey,
        json.encode(AccessTokenModel.fromEntity(token).toJson()),
      );
      return const DataSuccess(null);
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
