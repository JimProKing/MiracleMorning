import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/supabase/supabase.dart';

int? makeYr() {
  return DateTime.now().year;
}

int? makeMonth() {
  return DateTime.now().month;
}

int? makeDay() {
  return DateTime.now().day;
}

int? makeID(int n1) {
  return (n1 + 1);
}

String? msgContent(int? aa) {
  String message = "당신의 ID는 $aa 입니다!";
  return message;
}

int? calAllDay(
  int year,
  int month,
) {
  DateTime firstDayOfMonth = DateTime(year, month);
  int daysInMonth = DateTime(
    year,
    month + 1,
    0,
  ).day;

  return daysInMonth;
}

double? newCustomFunction(
  int n1,
  int n2,
) {
  return n1 / n2;
}

DateTime newCustomFunction2() {
  return DateTime.now();
}

int? month(String? temp) {
  if (temp == null) {
    var now = DateTime.now();
    var month = now.month;
    return month;
  } else {
    return int.parse(temp);
  }
}

int? year(String? temp) {
  if (temp == null) {
    var now = DateTime.now();
    var month = now.year;
    return month;
  } else {
    return int.parse(temp);
  }
}

DateTime showdate(DateTime? dateTime) {
  if (dateTime == null) {
    throw ArgumentError('Invalid argument: dateTime cannot be null');
  }
  // 입력받은 DateTime 객체를 UTC 시간으로 변환합니다.
  DateTime utcTime = dateTime.toUtc();

  // UTC 시간에서 9시간을 더한 후, 한국 시간대로 변환합니다.
  String timeZone = 'Asia/Seoul';
  Duration koreaTimezoneOffset = Duration(hours: 9);
  DateTime koreaTime = utcTime.add(koreaTimezoneOffset).toLocal();

  // 결과값을 반환합니다.
  return koreaTime;
}
