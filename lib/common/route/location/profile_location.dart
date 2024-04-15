import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_app/feature/profile/presentation/screen/profile_screen.dart';

class ProfileLocation extends BeamLocation<BeamState> {
  static const route = 'profile';
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return const [
      BeamPage(
        key: ValueKey('profile'),
        title: 'Profile',
        name: 'Profile',
        child: ProfileScreen(),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => const [route];
}
