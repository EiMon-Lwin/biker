part of 'geo_locator_bloc.dart';

@freezed
class GeoLocatorState with _$GeoLocatorState{
  const factory GeoLocatorState({
    required final bool isLocationTurnOn,
    required final bool isPermissionEnabled,
    @Default(false)
    final bool isStreaming,
    LatLng? currentLatLng,
  }) = _GeoLocatorState;
}
