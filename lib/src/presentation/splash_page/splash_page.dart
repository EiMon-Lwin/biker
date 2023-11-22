import 'package:app_state/application/bloc/app_state_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  final Future<void> Function() navigateToLocationPermissionPage;
  final Future<void> Function() navigateToTurnOnLocationPage;
  final Future<void> Function() navigateToSignInPage;

  const SplashPage({
    super.key,
    required this.navigateToSignInPage,
    required this.navigateToTurnOnLocationPage,
    required this.navigateToLocationPermissionPage,
  });

  static const String routeName = "splash-page";
  static const String routePath = "/$routeName";
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppStateBloc, AppStateState>(
      bloc: inject()..add(const AppStateEvent.initialize()),
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Image.asset(
              "assets/images/ic_launcher.png",
              width: context.width * 0.8,
            ),
          ),
        );
      },
    );
  }
}
