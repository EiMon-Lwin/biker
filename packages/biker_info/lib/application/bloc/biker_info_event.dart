// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'biker_info_bloc.dart';

@immutable
sealed class BikerInfoEvent {}

class GetBikerInfoEvent implements BikerInfoEvent {}
