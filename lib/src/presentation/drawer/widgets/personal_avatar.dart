import 'package:biker/src/utils/context_extension.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class PersonalProfileCard extends StatelessWidget {
  const PersonalProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BikerInfoBloc, BikerInfoState>(
      bloc: inject(),
      builder: (context, state) {
        final bikerInfo = state is BikerInfoReady ? state.bikerInfo : null;

        return Column(
          children: [
            AvatarCard(
              foregroundImage: bikerInfo == null
                  ? NetworkImage(bikerInfo!.profileImage)
                  : null,
            ),
            const SizedBox(height: 10),
            Text(
              bikerInfo.fullName,
              style: context.theme.textTheme.titleLarge,
            ),
            Text(
              bikerInfo.phone,
              style: context.theme.textTheme.bodySmall,
            ),
          ],
        );
      },
    );
  }
}
