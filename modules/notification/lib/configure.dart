import 'package:get_it/get_it.dart';

import 'application/application.dart';
import 'data/data.dart';
import 'domain/domain.dart';

///Required configured DIO Client inside GetIt
void injectNotificationModule() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<NotificationRepository>(NotificationRepositoryImpl(getIt()));
  getIt.registerSingleton(RegisterNotificationTokenUsecase(getIt()));
  getIt.registerSingleton(NotificationBloc(getIt()));
}