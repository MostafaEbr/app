import 'package:assessment/features/booking/presentation/manager/airport/airport_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/manager/app_manager_cubit.dart';
import 'config/manager/app_manager_state.dart';
import 'config/router/app_router.dart';
import 'config/theme/dark_theme.dart';
import 'config/theme/light_theme.dart';
import 'core/di/injection_container.dart';
import 'core/utils/strings/app_strings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/booking/domain/use_cases/get_booking_use_case.dart';
import 'features/booking/presentation/manager/booking_cubit.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initial for get_it (dependence inject)
  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [
            BlocProvider<AppMangerCubit>(
              create: (context) => sl<AppMangerCubit>(),
            ),
            BlocProvider<AirportCubit>(
              create: (context) => sl<AirportCubit>()..getAirport(),
            ),
            BlocProvider<BookingCubit>(
              create: (context)=>BookingCubit(sl<GetFlightUseCase>()),
            ),
          ],
          child: BlocBuilder<AppMangerCubit, AppMangerState>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              var cubit = context.read<AppMangerCubit>();
              return MaterialApp.router(
                title: AppStrings.appName,
                theme: LightTheme.themeData,
                locale: Locale(cubit.languageCode),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                debugShowCheckedModeBanner: false,
                routerConfig: AppRouter.router,
              );
            },
          ),
        );
  }
}