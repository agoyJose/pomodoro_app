import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_app/feature/home/presentation/screen/home_screen.dart';

class HomeLocation extends BeamLocation<BeamState> {
  static const route = '/home';
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return const [
      BeamPage(
        key: ValueKey('home'),
        title: 'Home',
        name: 'Home',
        child: HomeScreen(),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => const [route];
}
