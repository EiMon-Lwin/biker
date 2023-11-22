import 'dart:io';

import 'package:core/core.dart';
import 'package:network_client/network_client.dart';
import 'package:dio/dio.dart' as dio;

import 'package:network_client_real_adapter/src/helpers/url_formatter.dart';
import 'package:network_client_real_adapter/src/mapper/response.dart';

final class NetworkClientRealAdapter extends NetworkClient {
  final dio.Dio client;

  NetworkClientRealAdapter(
    this.client,
    NetworkClientConfig config,
  ) : super(config);

  dio.FormData formatFormData(Map<String, String> map) {
    return dio.FormData.fromMap(map);
  }

  @override
  Future<Response<T?>> get<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  }) async {
    return await send<T>(
      'GET',
      path,
      bearer: bearer,
      queryParameters: queryParameters,
      optionalHeaders: optionalHeaders,
      body: body,
      formData: formData,
      apiVersion: apiVersion,
    );
  }

  @override
  Future<Response<T?>> post<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  }) async {
    return await send<T>(
      'POST',
      path,
      bearer: bearer,
      queryParameters: queryParameters,
      optionalHeaders: optionalHeaders,
      body: body,
      formData: formData,
      apiVersion: apiVersion,
    );
  }

  @override
  Future<Response<T?>> put<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  }) async {
    return await send<T>(
      'PUT',
      path,
      bearer: bearer,
      queryParameters: queryParameters,
      optionalHeaders: optionalHeaders,
      body: body,
      formData: formData,
      apiVersion: apiVersion,
    );
  }

  @override
  Future<Response<T?>> delete<T>(
    String? path, {
    String? bearer,
    Map<String, String>? queryParameters,
    Map<String, String>? optionalHeaders,
    Object? body,
    Map<String, String>? formData,
    int apiVersion = 1,
    bool isUnAuthMethod = false,
  }) async {
    return await send<T>(
      'DELETE',
      path,
      bearer: bearer,
      queryParameters: queryParameters,
      optionalHeaders: optionalHeaders,
      body: body,
      formData: formData,
      apiVersion: apiVersion,
    );
  }

  @override
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
  }) async {
    final url = UriFormatter.format(
      config,
      path: path,
      queryParameters: queryParameters,
      apiVersion: apiVersion,
    );
    final data = formData == null ? body : formatFormData(formData);

    try {
      final res = await client.request<T>(
        url.toString().endsWith("?") ? url.toString().substring(0,url.toString().length - 1) : url.toString(),
        data: data,
        options: dio.Options(
          method: method,
        ),
      );

      if (res.statusCode != 200 && res.statusCode != 201) {
        throw HttpStatusException(
          statusCode: res.statusCode ?? 0,
          message: "${res.statusMessage}\n${res.data}",
        );
      }

      return res.toResponse();
    } on Exception catch (exception) {
      onException(exception);
      rethrow;
    }
  }

  late final Map<String, ExceptionHandler> _onExceptionHandlers = {};
  @override
  void registerCallbackOnException(String id, ExceptionHandler handler) {
    _onExceptionHandlers[id] = handler;
  }

  @override
  void onException(Exception exception) {
    config.onException?.call(exception);
    if (exception is SocketException) {
      config.onNetworkConnectionError?.call(exception);
    }
    _executeExceptionHandlers(exception);
  }

  void _executeExceptionHandlers(Exception exception) {
    _onExceptionHandlers.forEach((key, fun) {
      if (config.isDebugMode) print("Calling registered callback: $key");
      fun.call(exception);
    });
  }
}
