// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_translate/test/src/services/fallback_locale_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i4;

import 'package:windmillcode_flutter_translate/windmillcode_flutter_translate.dart' as _i3;
import 'package:windmillcode_flutter_translate/src/services/loaders/base/localization_loader.dart'
    as _i2;
import 'package:windmillcode_flutter_translate/src/services/loaders/base/localization_loader_options.dart'
    as _i5;
import 'package:windmillcode_flutter_translate/src/services/localization_service.dart'
    as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLocalizationLoader_0 extends _i1.SmartFake
    implements _i2.LocalizationLoader {
  _FakeLocalizationLoader_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFlutterTranslateOptions_1 extends _i1.SmartFake
    implements _i3.FlutterTranslateOptions {
  _FakeFlutterTranslateOptions_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLocale_2 extends _i1.SmartFake implements _i4.Locale {
  _FakeLocale_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLocalizationLoaderOptions_3 extends _i1.SmartFake
    implements _i5.LocalizationLoaderOptions {
  _FakeLocalizationLoaderOptions_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LocalizationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalizationService extends _i1.Mock
    implements _i6.LocalizationService {
  MockLocalizationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.LocalizationLoader get loader => (super.noSuchMethod(
        Invocation.getter(#loader),
        returnValue: _FakeLocalizationLoader_0(
          this,
          Invocation.getter(#loader),
        ),
      ) as _i2.LocalizationLoader);

  @override
  _i3.FlutterTranslateOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeFlutterTranslateOptions_1(
          this,
          Invocation.getter(#options),
        ),
      ) as _i3.FlutterTranslateOptions);

  @override
  bool containsLocale(_i4.Locale? locale) => (super.noSuchMethod(
        Invocation.method(
          #containsLocale,
          [locale],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i7.Future<Map<String, dynamic>?> loadLocaleData(_i4.Locale? locale) =>
      (super.noSuchMethod(
        Invocation.method(
          #loadLocaleData,
          [locale],
        ),
        returnValue: _i7.Future<Map<String, dynamic>?>.value(),
      ) as _i7.Future<Map<String, dynamic>?>);
}

/// A class which mocks [FlutterTranslateOptions].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterTranslateOptions extends _i1.Mock
    implements _i3.FlutterTranslateOptions {
  MockFlutterTranslateOptions() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Locale get fallbackLocale => (super.noSuchMethod(
        Invocation.getter(#fallbackLocale),
        returnValue: _FakeLocale_2(
          this,
          Invocation.getter(#fallbackLocale),
        ),
      ) as _i4.Locale);

  @override
  List<_i4.Locale> get supportedLocales => (super.noSuchMethod(
        Invocation.getter(#supportedLocales),
        returnValue: <_i4.Locale>[],
      ) as List<_i4.Locale>);

  @override
  bool get autoSave => (super.noSuchMethod(
        Invocation.getter(#autoSave),
        returnValue: false,
      ) as bool);

  @override
  _i3.MissingKeyStrategy get missingKeyStrategy => (super.noSuchMethod(
        Invocation.getter(#missingKeyStrategy),
        returnValue: _i3.MissingKeyStrategy.key,
      ) as _i3.MissingKeyStrategy);

  @override
  _i5.LocalizationLoaderOptions get loaderOptions => (super.noSuchMethod(
        Invocation.getter(#loaderOptions),
        returnValue: _FakeLocalizationLoaderOptions_3(
          this,
          Invocation.getter(#loaderOptions),
        ),
      ) as _i5.LocalizationLoaderOptions);
}
