part of 'biker_info_bloc.dart';

@immutable
sealed class BikerInfoEvent {}

class GetBikerInfoEvent implements BikerInfoEvent {}
