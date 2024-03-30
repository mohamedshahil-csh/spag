import 'package:logger/logger.dart';

class AppLoggerHelper {
  static final Logger _Logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _Logger.d(message);
  }

  static void info(String message) {
    _Logger.i(message);
  }

  static void warning(String message) {
    _Logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _Logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
