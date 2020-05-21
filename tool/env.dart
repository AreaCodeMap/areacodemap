import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {
    'apiKey': Platform.environment['AIzaSyC0VeB6mgR5bVXT5iHiNZCGGQnQAiJol2I'],
  };

  final filename = 'lib/.env.dart';
  File(filename).writeAsString('final environment = ${json.encode(config)};');
}