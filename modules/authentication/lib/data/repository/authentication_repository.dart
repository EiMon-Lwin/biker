import 'dart:convert';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:secure_local_storage/secure_local_storage.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';
import '../../data/data.dart';

class AuthenticationRepositoryImplementation implements AuthenticationRepository {
  final SecureLocalStorage secureLocalStorage;
  final TokenJar tokenJar;
  final Dio client;

  const AuthenticationRepositoryImplementation(
    this.tokenJar,
    this.client,
    this.secureLocalStorage,
  );

  @override
  Future<DataState<AuthenticatedUserEntity>> authenticateUser({
    required String phoneNumber,
    required String password,
  }) async {
    const path = 'auth/access-token';

    try {
      final res = await client.post<Map<String, dynamic>>(path,
          data: FormData.fromMap({
            "Username": phoneNumber,
            "Password": password,
          }));

      try {
        return DataSuccess(AuthenticatedUserModel.fromJson(res.data!['data']));
      } on Exception catch (e) {
        throw SerializationException(e);
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<AccessTokenEntity>> refreshAccessToken({
    required String accessToken,
    required String refreshToken,
  }) {
    // TODO: implement refreshAccessToken
    throw UnimplementedError();
  }

  @override
  Future<DataState<RegisteredUserEntity>> registerUser({
      required String fullName,
      required String phone,
      required String language,
      required String? notiToken,
  }) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> saveAuthenticatedUser(AuthenticatedUserEntity user) async {
    final model = AuthenticatedUserModel.fromEntity(user);
    final source = json.encode(model.toJson());
    
    try {
      final result = await secureLocalStorage.setString(
        registeredUserStorageKey,
        source,
      );
      return DataSuccess(result);
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<AuthenticatedUserEntity>> getSavedAuthenticatedUser() async {
    try {
      final source = await secureLocalStorage.getString(
        registeredUserStorageKey,
      );
      return DataSuccess(AuthenticatedUserModel.fromJson(json.decode(source!)));
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
  
  @override
  String get registeredUserStorageKey => "RegisteredUser";
}
