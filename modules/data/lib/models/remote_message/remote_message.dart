import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_message.freezed.dart';
part 'remote_message.g.dart';

@freezed
class RemoteMessageModel with _$RemoteMessageModel{
    
  factory RemoteMessageModel({
    required final String invokeType,
    required final Map<String, dynamic> data,
  }) = _RemoteMessageModel;

  factory RemoteMessageModel.fromJson(Map<String, dynamic> json)
    => _$$_RemoteMessageModelFromJson(json);
}
