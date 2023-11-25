import 'package:biker/src/utils/context_extension.dart';
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
        final button = GeneralButton(
          cornerRadius: 1000,
          borderColor: context.theme.cardColor,
          labelStyle: context.theme.textTheme.titleMedium?.copyWith(
            color: context.theme.cardColor,
          ),
          labelPadding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
          label: localeApi.tr(
            isCheckedIn
                ? resourceStrings.btnCheckOut
                : resourceStrings.lblUserCheckIn,
          ),
          onPressed: onCheckInButtonPressed,
        );

        if (state is BikerInfoReady) {
          final checkInSchedule = state.bikerInfo.checkInSchedule;
          final isCheckedIn = checkInSchedule != null;

          return Padding(
            padding: margin,
            child: ShakeWidget(
              autoPlay: isCheckedIn,
              shakeConstant: ShakeHardConstant2(),
              child: button,
            ),
          );
        }

        return IgnorePointer(
          ignoring: true,
          child: Padding(
            padding: margin,
            child: Opacity(
              opacity: 0.5,
              child: button,
            ),
          ),
        );
      },
    );
  }
}
