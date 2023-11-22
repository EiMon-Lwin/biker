// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'biker_info_bloc.dart';

@immutable
sealed class BikerInfoEvent {}

class GetBikerInfoEvent implements BikerInfoEvent {}

class ScheduleCheckOutButtonEvent implements BikerInfoEvent {
  final void Function() showCheckOutFail;
  final void Function() showCheckOutSuccess;

  const ScheduleCheckOutButtonEvent({
    required this.showCheckOutFail,
    required this.showCheckOutSuccess,
  });
}
