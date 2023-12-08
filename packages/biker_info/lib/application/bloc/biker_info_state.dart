part of 'biker_info_bloc.dart';

@immutable
sealed class BikerInfoState {}

final class BikerInfoInitial extends BikerInfoState {}

final class BikerInfoLoading extends BikerInfoState {}

final class BikerInfoError extends BikerInfoState {}

final class BikerInfoReady implements BikerInfoState {
  final BikerInfoEntity bikerInfo;

  bool get isCheckedIn => bikerInfo.checkInSchedule != null;

  const BikerInfoReady({
    required this.bikerInfo,
  });
}
