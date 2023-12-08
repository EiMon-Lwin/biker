import 'package:network_client/network_client.dart';
import 'package:dio/dio.dart' as dio;

extension ResponseMapperExtension<T> on dio.Response<T> {
  Response<T> toResponse() {
    return Response<T>(
      data: data,
      statusCode: statusCode,
      statusMessage: statusMessage,
      headers: headers.map,
      isRedirect: isRedirect,
    );
  }
}
