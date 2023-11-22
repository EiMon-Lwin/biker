import 'package:authentication/authentication.dart';
import 'package:biker/src/presentation/home/bloc/home_page_bloc.dart';
import 'package:biker/src/presentation/home/body/loading.dart';
import 'package:biker/src/presentation/home/body/ready.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = "index";
  static const String routePath = "/$routeName";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final localeApi = inject<LocalizationApi>();
  late final resourceStrings = inject<ResourceStrings>();
  late final homePageBloc = HomePageBloc(inject(), inject(), inject(), inject());

  @override
  void initState() {
    homePageBloc.add(const HomePageEvent.started());
    super.initState();
  }

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
                state: state,
                isCheckedIn: state.isCheckedIn,
                onCheckInButtonPressed: () => bikerInfoBloc.add(
                  ScheduleCheckOutButtonEvent(
                    showCheckOutFail: showCheckOutFail,
                    showCheckOutSuccess: showCheckOutSuccess,
                  ),
                ),
                onRefresh: () async {
                  homePageBloc.add(const HomePageEvent.started());
                },
              );
            }

            return const HomePageLoading();
          },
        );
      },
    );
  }
}
