import 'package:authentication/authentication.dart';
import 'package:biker/src/presentation/home/bloc/home_page_bloc.dart';
import 'package:biker/src/presentation/home/body/ready.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class HomePage extends StatefulWidget {
  final void Function() navigateToCheckInPage;
  const HomePage({super.key, required this.navigateToCheckInPage,});

  static const String routeName = "index";
  static const String routePath = "/$routeName";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final localeApi = inject<LocalizationApi>();
  late final resourceStrings = inject<ResourceStrings>();
  late final homePageBloc = HomePageBloc(inject(), inject(), inject(), inject(), inject());
  
  @override
  Widget build(BuildContext context) {
    late final bikerInfoBloc = inject<BikerInfoBloc>();

    late final dialogApi = inject<DialogApi>();
    late final localeApi = inject<LocalizationApi>();
    late final resourceStrings = inject<ResourceStrings>();

    void showCheckOutSuccess() {
      dialogApi.showSnackBar(
        message: localeApi.tr(resourceStrings.lblCheckOutSuccessful),
      );
    }

    void showCheckOutFail() {
      dialogApi.showSnackBar(
        message: localeApi.tr(resourceStrings.lblCheckOutFail),
      );
    }

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: inject<AuthenticationBloc>(),
      builder: (context, authState) {
        return BlocBuilder<BikerInfoBloc, BikerInfoState>(
          bloc: bikerInfoBloc,
          builder: (context, state) {
            if (state is BikerInfoReady) {
              return HomePageReady(
                userName: state.bikerInfo.fullName,
                isCheckedIn: state.isCheckedIn,
                onCheckInButtonPressed: () {
                  homePageBloc.add(HomePageEvent.checkInButtonPress(
                    onNavigateToCheckInPage: widget.navigateToCheckInPage
                  ));
                },
                onRefresh: () async {
                  homePageBloc.add(const HomePageEvent.started());
                },
              );
            }

            return HomePageReady(
                userName: "${localeApi.tr(resourceStrings.lblLoading)}...",
                isCheckedIn: false,
                onCheckInButtonPressed: () {},
                onRefresh: () async {
                  homePageBloc.add(const HomePageEvent.started());
                },
              );
          },
        );
      },
    );
  }
}
