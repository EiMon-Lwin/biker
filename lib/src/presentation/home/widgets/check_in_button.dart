import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class CheckInButton extends StatelessWidget {
  final EdgeInsets margin;

  final bool isCheckedIn;
  final void Function() onCheckInButtonPressed;
  
  const CheckInButton({
    super.key,
    this.isCheckedIn = false,
    required this.onCheckInButtonPressed,
    this.margin = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    late final localeApi = inject<LocalizationApi>();
    late final resourceStrings = inject<ResourceStrings>();
    late final bloc = inject<BikerInfoBloc>();


    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        if (state is BikerInfoReady) {
          final checkInSchedule = state.bikerInfo.checkInSchedule;
          final isCheckedIn = checkInSchedule != null;

          return Padding(
            padding: margin,
            child: ShakeWidget(
              autoPlay: isCheckedIn,
              shakeConstant: ShakeHardConstant2(),
              child: GeneralButton(
                label: localeApi.tr(
                  isCheckedIn
                      ? resourceStrings.btnCheckOut
                      : resourceStrings.lblUserCheckIn,
                ),
                onPressed: onCheckInButtonPressed,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
