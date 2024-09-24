import 'package:intl/intl.dart';

class Helpers {
  static String get timeNowFormatted =>
      DateFormat('h:mm a').format(DateTime.now());
}
