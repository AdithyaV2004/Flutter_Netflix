import 'package:flutter_netflix/core/strings.dart';
import 'package:flutter_netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "$kBaseUrl/movie/popular?language=en-US&page=1&api_key=$apiKey";
}
