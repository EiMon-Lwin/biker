import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
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
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final bikerInfoBloc = inject<BikerInfoBloc>();
  final geoLocatorBloc = inject<GeoLocatorBloc>();

  @override
  void initState() {
    bikerInfoBloc.add(GetBikerInfoEvent());
    geoLocatorBloc.add(const CheckLocationEnabledEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/ic_launcher.png",
          width: context.width * 0.8,
        ),
      ),
    );
  }
}
