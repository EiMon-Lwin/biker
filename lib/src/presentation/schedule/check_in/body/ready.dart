import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:biker/src/presentation/schedule/check_in/bloc/check_in_bloc.dart';
import 'package:biker/src/presentation/schedule/check_in/widgets/assemble_image_picker.dart';
import 'package:biker/src/presentation/schedule/check_in/widgets/distance_info.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geo_locator_api/geo_locator_api.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

import '../widgets/assembly_map.dart';

class CheckInReady extends StatelessWidget {
  final bool isDisabled;
  final bool isWithin;
  final File? selectedImageFile;
  final double? distanceKilometers;
  final LatLng? userLocation;
  final LatLng assemblyLocation;
  final double assemblyRadiusMeter;
  final void Function()? onLocateButtonPressed;
  final void Function()? onRemoveSelectedImage;
  final FutureOr<void> Function()? onAddImageButtonPressed;
  final MapController mapController;
  final void Function() onMapReady;
  final void Function() onSubmit;
  final CheckInPageStateStatus status;

  const CheckInReady({
    super.key,
    required this.onMapReady,
    this.isWithin = false,
    this.onLocateButtonPressed,
    this.distanceKilometers,
    this.selectedImageFile,
    this.userLocation,
    required this.assemblyLocation,
    this.assemblyRadiusMeter = 30.0,
    this.onAddImageButtonPressed,
    required this.mapController,
    this.onRemoveSelectedImage,
    this.isDisabled = false,
    required this.onSubmit,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    final points = [
      if (userLocation != null) userLocation!,
      assemblyLocation,
    ];

    const successColor = Colors.green;
    const failedColor = Colors.red;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            height: context.height * 0.5,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: AssemblyMap(
                    onMapReady: onMapReady,
                    mapController: mapController,
                    assemblyLocation: assemblyLocation,
                    points: points,
                    assemblyRadiusMeter: assemblyRadiusMeter,
                    userLocation: userLocation,
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: BouncingWidget(
                    scaleFactor: 2,
                    duration: const Duration(milliseconds: 100),
                    onPressed: onLocateButtonPressed?.call ?? () {},
                    child: CircleAvatar(
                      backgroundColor: context.theme.scaffoldBackgroundColor,
                      child: const Icon(CupertinoIcons.location),
                    ),
                  ),
                ),
                if (distanceKilometers != null)
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    child: DistanceInfo(currentDistance: distanceKilometers!),
                  )
              ],
            ),
          ),
          Container(
            width: context.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: isWithin
                    ? successColor.withOpacity(0.2)
                    : failedColor.withOpacity(0.2),
                width: 1.4,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: isWithin
                ? Row(
                    children: [
                      CircleAvatar(
                        radius: 24.0,
                        backgroundColor: successColor.withOpacity(0.2),
                        child: const Icon(
                          Icons.done_rounded,
                          color: successColor,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          localeApi.tr(resourceStrings.lblWithinAssemblyCircle),
                          textAlign: TextAlign.justify,
                          style: context.theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      CircleAvatar(
                        radius: 24.0,
                        backgroundColor: failedColor.withOpacity(0.2),
                        child: Transform.rotate(
                          angle: pi / 4,
                          child: const Icon(
                            Icons.arrow_upward,
                            color: failedColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          localeApi
                              .tr(resourceStrings.lblMoveWithinAssemblyCircle),
                          textAlign: TextAlign.justify,
                          style: context.theme.textTheme.titleSmall?.copyWith(
                            color: context.theme.textTheme.bodySmall?.color,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          AssembleImagePicker(
            selectedImageFile: selectedImageFile,
            onAddImageButtonPressed: onAddImageButtonPressed,
            onRemoveSelectedImage: onRemoveSelectedImage,
          )
        ],
      ),
      bottomNavigationBar: BottomActionsWrapper(
        child: GeneralButton(
          label: status == CheckInPageStateStatus.submitting
              ? localeApi.tr(resourceStrings.btnSubmitting)
              : localeApi.tr(resourceStrings.lblUserCheckIn),
          isDisabled: isDisabled,
          onPressed: onSubmit,
        ),
      ),
    );
  }
}
