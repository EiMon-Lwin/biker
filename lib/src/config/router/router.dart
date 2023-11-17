import 'package:app_state_notifier/app_state_notifier.dart';
import 'package:biker/src/presentation/presentation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class RouterService {
  final bool isDevEnv;
  final AppStateNotifier appState;

  RouterService(this.appState, {this.isDevEnv = true});

  // static const String OrderDetailPage = "/orderdetail";
  // static const String CheckInPage = "/checkin";
  // static const String profilePage = "/profile";
  // static const String PunishmentPage = "/punishment";
  // static const String OrderHistory = "/orderHistory";
  // static const String Notification = "/notification";
  // static const String QrPage = "/qrscreen";
  // static const String DropOffpage = "/dropoff";
  // static const String OrderSummaryPage = "/ordersummary";
  // static const String SchedulePage = "/schedule";
  // static const String ClearancePage = "/clearance";
  // static const String ClearanceHistoryPage = "/clearanceHistory";
  // static const String RulePage = "/rule";
  // static const String LocationErrorPage = "/locationerror";
  // static const String FinalSuccessPage = "/finalsuccess";
  // static const String EarningHistoryPage = "/earninghistory";
  // static const String LocationPermissionPage = "/locationpermisson";

  late final parentNavigationKey = GlobalKey<NavigatorState>();

  late final routerConfig = GoRouter(
    redirectLimit: 8,
    navigatorKey: parentNavigationKey,
    refreshListenable: appState,
    initialLocation: isDevEnv ? ApiConfigPage.routePath : SplashPage.routePath,
    redirect: (context, state) {
      final loc = state.matchedLocation;

      if (loc == SplashPage.routePath && appState.initialized) {
        return SignInPage.routePath;
      }

      if (loc == SignInPage.routePath && appState.loginState) {
        return TurnOnLocationPage.routePath;
      }

      if (loc == TurnOnLocationPage.routePath && appState.isLocationTurnOn) {
        return LocationPermissionPage.routePath;
      }

      if (loc == LocationPermissionPage.routePath &&
          appState.hasLocationPermission) {
        return HomePage.routePath;
      }

      return null;
    },
    routes: [
      GoRoute(
        name: ApiConfigPage.routeName,
        path: ApiConfigPage.routePath,
        builder: (context, state) {
          return ApiConfigPage(
            navigateToSplashPage: () => context.goNamed(SplashPage.routeName),
          );
        },
      ),
      GoRoute(
        path: "/",
        builder: (context, state) {
          return SplashPage(
              navigateToTurnOnLocationPage: () async =>
                  context.goNamed(LocationPermissionPage.routeName),
              navigateToSignInPage: () async =>
                  context.goNamed(SignInPage.routeName),
              navigateToLocationPermissionPage: () async =>
                  context.goNamed(TurnOnLocationPage.routeName));
        },
      ),
      GoRoute(
        name: SplashPage.routeName,
        path: SplashPage.routePath,
        builder: (context, state) {
          return SplashPage(
              navigateToTurnOnLocationPage: () async =>
                  context.goNamed(LocationPermissionPage.routeName),
              navigateToSignInPage: () async =>
                  context.goNamed(SignInPage.routeName),
              navigateToLocationPermissionPage: () async =>
                  context.goNamed(TurnOnLocationPage.routeName));
        },
      ),
      GoRoute(
        name: SignInPage.routeName,
        path: SignInPage.routePath,
        builder: (context, state) {
          return SignInPage(
            navigateToPinVerficationPage: (phoneNumber) {
              context.pushNamed(
                PasscodePage.routeName,
                queryParameters: {PasscodePage.phoneNumerKey: phoneNumber},
              );
            },
          );
        },
      ),
      GoRoute(
        name: PasscodePage.routeName,
        path: PasscodePage.routePath,
        builder: (context, state) {
          return PasscodePage(
            phoneNumber: state.uri.queryParameters[PasscodePage.phoneNumerKey]!,
            navigateToHomePage: () => context.goNamed(HomePage.routeName),
          );
        },
      ),
      GoRoute(
        name: HomePage.routeName,
        path: HomePage.routePath,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: LocationPermissionPage.routeName,
        path: LocationPermissionPage.routePath,
        builder: (context, state) {
          return const LocationPermissionPage();
        },
      ),
      GoRoute(
        name: TurnOnLocationPage.routeName,
        path: TurnOnLocationPage.routePath,
        builder: (context, state) {
          return const TurnOnLocationPage();
        },
      )
    ],
  );
}
