import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../domain/domain.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final RegisterNotificationTokenUsecase registerNotificationTokenUsecase;
  NotificationBloc(
    this.registerNotificationTokenUsecase,
  ) : super(NotificationInitial()) {
    on<IncomingSocketMessageEvent>(_onIncomingSocketMessageEvent);
  }

  void onEvent(NotificationEvent event) {
    print(this.runtimeType.toString() + "${event}");
    super.onEvent(event);
  }

  FutureOr<void> _onIncomingSocketMessageEvent(
    IncomingSocketMessageEvent event,
    Emitter<NotificationState> emit,
  ) async {
    // print(event);
  }
}
