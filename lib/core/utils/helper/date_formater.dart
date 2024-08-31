 import 'package:intl/intl.dart';

class AppDateFormater{
  static String dayMonthYear(DateTime date)=> '${date.day}/${date.month}/${date.year}';
  static String dayMonthYearFormated(DateTime date)=> DateFormat('d, MMM yyyy').format(date);
  static String dayFormated(DateTime date)=> DateFormat('yyyy-MM-dd').format(date);
  static String timeFormat(String date)=> DateFormat('hh:mm').format(DateTime.parse(date));


}