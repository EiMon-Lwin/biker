import 'package:biker_info/domain/entities/biker_info.dart';
import 'package:core/core.dart';

abstract class BikerInfoRepository {
  Future<DataState<BikerInfoEntity>> getInfo();

  Future<DataState<bool>> scheduleCheckOut(DateTime scheduleDate);
}
