// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_translate/test/src/services/supported_locale_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i2;

import 'package:windmillcode_flutter_translate/windmillcode_flutter_translate.dart' as _i4;
import 'package:windmillcode_flutter_translate/src/services/loaders/base/localization_loader_options.dart'
    as _i3;
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

class _FakeLocale_0 extends _i1.SmartFake implements _i2.Locale {
  _FakeLocale_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLocalizationLoaderOptions_1 extends _i1.SmartFake
    implements _i3.LocalizationLoaderOptions {
  _FakeLocalizationLoaderOptions_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FlutterTranslateOptions].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterTranslateOptions extends _i1.Mock
    implements _i4.FlutterTranslateOptions {
  MockFlutterTranslateOptions() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Locale get fallbackLocale => (super.noSuchMethod(
        Invocation.getter(#fallbackLocale),
        returnValue: _FakeLocale_0(
          this,
          Invocation.getter(#fallbackLocale),
        ),
      ) as _i2.Locale);

  @override
  List<_i2.Locale> get supportedLocales => (super.noSuchMethod(
        Invocation.getter(#supportedLocales),
        returnValue: <_i2.Locale>[],
      ) as List<_i2.Locale>);

  @override
  bool get autoSave => (super.noSuchMethod(
        Invocation.getter(#autoSave),
        returnValue: false,
      ) as bool);

  @override
  _i4.MissingKeyStrategy get missingKeyStrategy => (super.noSuchMethod(
        Invocation.getter(#missingKeyStrategy),
        returnValue: _i4.MissingKeyStrategy.key,
      ) as _i4.MissingKeyStrategy);

  @override
  _i3.LocalizationLoaderOptions get loaderOptions => (super.noSuchMethod(
        Invocation.getter(#loaderOptions),
        returnValue: _FakeLocalizationLoaderOptions_1(
          this,
          Invocation.getter(#loaderOptions),
        ),
      ) as _i3.LocalizationLoaderOptions);
}
