import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskyIcons {
  static Widget getsvg(String name, {Color? color}) {
    return SvgPicture.asset('assets/svg_icons/$name', color: color);
  }

  static final calendar = getsvg('calendar.svg');
  static final challenge = getsvg('challenge.svg');
  static final chart = getsvg('chart.svg');
  static final cloudBig = getsvg('cloud_big.svg');
  static final home = getsvg('home.svg');
  static final plus = getsvg('plus.svg');
  static final qrCode = getsvg('qr_code.svg');
  static final ranking = getsvg('ranking.svg');
  static final taskCalendar = getsvg('task_calendar.svg');
  static final time = getsvg('time.svg');
  static final topWeather = getsvg('top_weather.svg');
}
