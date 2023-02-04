import 'package:flutter/material.dart';
import 'package:magicsour/s_localization.dart';

class Utils {
  static Widget formatTime(Duration time) {
    String timeString;
    if (time.inMinutes < 60 && time.inMinutes > 0) {
      timeString = '${time.inMinutes} ${S.instance!.minutes}';
    } else {
      timeString =
          '${time.inHours}${S.instance!.hours} '
              '${time.inMinutes - (time.inHours * 60)} ${S.instance!.minutes}';
    }

    return Text(
      timeString,
      style: const TextStyle(fontSize: 12, color: Colors.brown),
    );
  }

  static String durationToString(double seconds) {
    Duration duration = Duration(seconds: seconds.toInt());
    if (seconds < 60) {
      return '$seconds ${S.instance!.seconds}';
    }
    if (seconds < 3600) {
      return '${duration.inMinutes} ${S.instance!.minutes}';
    }
    final hours = duration.inHours;
    final minutes = duration.inMinutes - hours * 60;

    if (hours < 12) {
      return '$hours ${S.instance!.hours} $minutes ${S.instance!.minutes}';
    } else {
      return '$hours ${S.instance!.hours}';
    }
  }
}
