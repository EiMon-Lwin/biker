import 'models/models.dart';

typedef ExceptionHandler = void Function(Exception);

abstract class NetworkClient {
  final NetworkClientConfig config;

  const NetworkClient(this.config);

  void registerCallbackOnException(String id, ExceptionHandler handler);

  void onException(Exception exception);

  Future<Response<T?>> send<T>(
    String method,
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  });

  Future<Response<T?>> get<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  });

  Future<Response<T?>> post<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  });

  Future<Response<T?>> put<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  });

  Future<Response<T?>> delete<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  });
}
