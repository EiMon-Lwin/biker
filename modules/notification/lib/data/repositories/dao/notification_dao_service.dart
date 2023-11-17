import 'package:core/core.dart';

import '../../../domain/domain.dart';
import 'notification_db.dart';

class NotifcationDaoService {
  final database = NotificationDB();
  
  Future<DataState<int>> saveNotification(NotificationEntity entity) async {
    try {
      final id = await database.insert(entity);
      return DataSuccess(id);
    } on Exception catch (error) {
      return DataFailed(error);
    }
  }
}