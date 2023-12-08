import 'package:biker/src/presentation/schedule/check_in/body/loading.dart';
import 'package:biker/src/presentation/schedule/check_in/body/ready.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

import 'bloc/check_in_bloc.dart';

class CheckInPage extends StatefulWidget {
  const CheckInPage({super.key});

  static const String routeName = "check-in";
  static const String routePath = "/$routeName";

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  final localeApi = inject<LocalizationApi>();
  final resouceStrings = inject<ResourceStrings>();

  late final CheckInPageBloc bloc;
  late final MapController mapController;

  @override
  void initState() {
    mapController = MapController();
    bloc = CheckInPageBloc(
      mapController,
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
      inject(),
    )..add(const CheckInEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.adaptive.arrow_back_rounded),
          onPressed: context.pop,
        ),
        centerTitle: true,
        title: Text(
          localeApi.tr(resouceStrings.lblUserCheckIn),
        ),
      ),
      body: BlocConsumer<CheckInPageBloc, CheckInPageState>(
        bloc: bloc,
        listener: (BuildContext context, CheckInPageState state) { 
          if(state.status == CheckInPageStateStatus.success) {
            context.pop();
          }
        },
        builder: (context, state) {
          if(state.assemblyLatLng == null) return const CheckInLoading();

          return CheckInReady(
            mapController: bloc.mapController,
            onLocateButtonPressed: () => bloc.add(const CheckInEvent.locateButtonPressed()),
            onAddImageButtonPressed: () => bloc.add(const CheckInEvent.onAddImageButtonPressed()),
            selectedImageFile: state.selctedImageFile,
            onRemoveSelectedImage: () => bloc.add(const CheckInEvent.removeSelectedImage()),
            userLocation: state.userLatLng,
            assemblyLocation: state.assemblyLatLng!,
            distanceKilometers: state.currentDistance,
            onMapReady: () => bloc.add(const CheckInEvent.onMapReady()),
            isWithin: state.isWithin,
            isDisabled: !state.isWithin,
            onSubmit: () => bloc.add(const CheckInEvent.onCheckInButtonPressed()),
            status: state.status,
          );
        }, 
      ),
    );
  }
}
