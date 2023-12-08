part of 'check_in_bloc.dart';

@freezed
class CheckInEvent with _$CheckInEvent {
  const factory CheckInEvent.started() = _Started;
  const factory CheckInEvent.loadAssemblyLatLng() = _LoadAssemblyLatLng;
  const factory CheckInEvent.updateUserLocation(LatLng latLng) = _UpdateUserLocation;
  const factory CheckInEvent.updateAssemblyLatLng(LatLng latLng) = _UpdateAssemblyLatLng;
  const factory CheckInEvent.locateButtonPressed() = _LocateButtonPressed;
  const factory CheckInEvent.onAddImageButtonPressed() = _AddImageButtonPressed;
  const factory CheckInEvent.removeSelectedImage() = _RemoveSelectedImage;
  const factory CheckInEvent.onMapReady() = _OnMapReady;
  const factory CheckInEvent.onCheckInButtonPressed(
    
  ) = _OnCheckInButtonPressed;
}