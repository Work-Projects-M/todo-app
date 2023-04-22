/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:54:17
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'logger.dart';

class AppFormatter {
  const AppFormatter._();

  static String formatDate(DateTime date, {String? pattern}) {
    int year = date.year;
    String month = date.month.toString().padLeft(2, '0');
    String day = date.day.toString().padLeft(2, '0');
    String hh = date.hour.toString().padLeft(2, '0');
    String mm = date.minute.toString().padLeft(2, '0');
    String ss = date.second.toString().padLeft(2, '0');

    String formatted;

    switch (pattern) {
      case 'hh:mm:ss':
        formatted = '$hh:$mm:$ss';
        break;
      case 'dd.mm.yyyy':
        formatted = '$day.$month.$year';
        break;

      case 'dd.mm.yyyy | hh:mm':
        formatted = '$day.$month.$year | $hh:$mm';
        break;

      case 'yyyy-mm-dd':
        formatted = '$year-$month-$day';
        break;

      case 'MM yyyy':
        String month = getMonthName(date.month);
        formatted = "$month $year";
        break;

      case 'hh.mm f':
        String midday = date.hour > 12 ? 'PM' : 'AM';
        formatted = '$hh.$mm $midday';
        break;

      case 'dd hh:mm':
        String d = setDay(date);

        formatted = '$d, $hh:$mm';
        break;
      case 'dd dd-mm-yyyy':
        String d = setDay(date);
        formatted = d == 'Today' ? d : '$d $day-$month-$year';
        break;

      default:
        formatted = '$day/$month/$year $hh:$mm';
    }

    return formatted;
  }

  static String setDay(DateTime date) {
    String now = formatDate(DateTime.now(), pattern: 'dd.mm.yyyy');

    return now == formatDate(date, pattern: 'dd.mm.yyyy') ? 'Today' : '';
  }

  static String formatDateFromMills(int mills, {String pattern = "MM yyyy"}) {
    if (mills == 0) return "present";
    return formatDate(
      DateTime.fromMillisecondsSinceEpoch(mills),
      pattern: pattern,
    );
  }

  static String getMonthName(int month) {
    return [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ][month - 1];
  }
}
