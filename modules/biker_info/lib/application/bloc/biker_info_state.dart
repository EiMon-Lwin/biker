part of 'biker_info_bloc.dart';

@immutable
sealed class BikerInfoState {}

final class BikerInfoInitial extends BikerInfoState {}

final class BikerInfoLoading extends BikerInfoState {}

final class BikerInfoError extends BikerInfoState {}

final class BikerInfoReady implements BikerInfoState {
  final BikerInfoEntity bikerInfo;

  const BikerInfoReady({
    required this.bikerInfo,
  });
}
