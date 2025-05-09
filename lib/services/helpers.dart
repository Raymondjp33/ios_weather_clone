import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class Helpers {
  static String get uuid => Uuid().v4().replaceAll('-', '');

  static String get timeNowFormatted =>
      DateFormat('h:mm a').format(DateTime.now());
}
