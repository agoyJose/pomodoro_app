import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pomodoro_app/common/route/location/home_location.dart';
import 'package:pomodoro_app/common/route/location_builder/app_location_builder.dart';

class PomodoroApp extends HookConsumerWidget {
  const PomodoroApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerDelegate = useMemoized(() {
      return BeamerDelegate(
          initialPath: HomeLocation.route,
          locationBuilder: appLocationBuilder.call,
          transitionDelegate: const NoAnimationTransitionDelegate(),
          beamBackTransitionDelegate: const NoAnimationTransitionDelegate());
    });
    return Portal(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate,
      ),
    );
  }
}
