part of 'check_in_bloc.dart';

enum CheckInPageStateStatus { loading, assemblyNotFound, ready, submitting, failed, success }

@freezed
class CheckInPageState with _$CheckInPageState {
  factory CheckInPageState({
    required final CheckInPageStateStatus status,
    final LatLng? userLatLng,
    final LatLng? assemblyLatLng,
    final File? selctedImageFile,
    final double? currentDistance,
    @Default(false)
    final bool isWithin,
    @Default(false)
    final bool isMapReady,
  }) = _CheckInPageState;
}
