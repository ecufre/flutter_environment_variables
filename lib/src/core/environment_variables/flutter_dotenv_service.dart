import 'package:flutter_dotenv/flutter_dotenv.dart';

class FlutterDotenvService {
  static String getStringEnvironmentVariable(String key) => dotenv.get(key);

  static int getIntEnvironmentVariable(String key) => dotenv.getInt(key);

  static double getDoubleEnvironmentVariable(String key) =>
      dotenv.getDouble(key);

  static bool getBoolEnvironmentVariable(String key) => dotenv.getBool(key);
}
