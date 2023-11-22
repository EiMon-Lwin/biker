import 'package:authentication/authentication.dart';
import 'package:biker/src/presentation/orders/body/empty.dart';
import 'package:biker/src/presentation/orders/body/loading.dart';
import 'package:core/core.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_api/localization_api.dart';
import 'package:order/application/bloc/order_bloc.dart';
import 'package:resource_strings/resource_strings.dart';

import '../body/error.dart';

class CurrentOrdersPage extends StatelessWidget {
  const CurrentOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: inject(),
      builder: (context, state) {
        if (state is AuthenticationSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                localeApi.tr(resourceStrings.lblCurrentOrders),
                style: context.theme.textTheme.titleLarge,
              ),
              BlocBuilder<OrderBloc, OrderState>(
                bloc: inject<OrderBloc>()
                  ..add(LoadOrdersEvent(
                    userId: state.authenticatedUser.user.id,
                    pageRows: 0,
                    pageSize: 4,
                  )),
                builder: (context, state) {
                  switch (state.runtimeType) {
                    case OrderPageLoading:
                      return const OrderPageLoadingWidget();
                    case OrderPageError:
                      return const OrderPageErrorWidget();
                    case OrderPageReady:
                      state as OrderPageReady;
                      if (state.currentOrders.isEmpty) {
                        return const OrderPageEmpty();
                      }
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
