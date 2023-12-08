import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'response_message.freezed.dart';
part 'response_message.g.dart';

@freezed
class ResponseMessageModel extends ResponseMessageEntity with _$ResponseMessageModel{
  factory ResponseMessageModel({
    required final String message,
  }) = _ResponseMessageModel;


  factory ResponseMessageModel.fromJson(Map<String, dynamic> json)
  => _$$_ResponseMessageModelFromJson(json);
}
