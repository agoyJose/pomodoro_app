import 'package:beamer/beamer.dart';
import 'package:pomodoro_app/common/route/location/home_location.dart';
import 'package:pomodoro_app/common/route/location/profile_location.dart';

final appLocationBuilder =
    BeamerLocationBuilder(beamLocations: [HomeLocation(), ProfileLocation()]);
