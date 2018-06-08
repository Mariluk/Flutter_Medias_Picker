import 'dart:async';

import 'package:flutter/services.dart';

class MediasPicker {
  static const MethodChannel _channel =
      const MethodChannel('medias_picker');

  static Future<List<dynamic>> get pickMedias async {
    final List<dynamic> docsPaths = await _channel.invokeMethod('pickMedias');
    return docsPaths;
  }
}
