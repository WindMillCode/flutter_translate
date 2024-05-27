import 'package:flutter/widgets.dart';
import 'package:windmillcode_flutter_translate/windmillcode_flutter_translate.dart';

abstract class LocalizationLoader {
  FlutterTranslateOptions options;

  LocalizationLoader(this.options);

  Future<Map<String, dynamic>?> load(Locale locale);
}
