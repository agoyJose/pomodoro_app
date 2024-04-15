import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pomodoro_app/app.dart';
import 'package:pomodoro_app/common/service/local_storage/box_instance_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Beamer.setPathUrlStrategy();

  await Hive.initFlutter();

  final localBox = await Hive.openBox<dynamic>('local-box');

  final container = ProviderContainer(
      overrides: [boxInstanceProvider.overrideWithValue(localBox)]);

  runApp(UncontrolledProviderScope(
      container: container, child: const PomodoroApp()));
}

//flutter run 2>&1 | Select-String -Pattern "EGL_emulation", "D/InputMethodManager", "D/InsetsController", "W/RemoteInputConnectionImpl", "I/TextInputPlugin"  -NotMatch
