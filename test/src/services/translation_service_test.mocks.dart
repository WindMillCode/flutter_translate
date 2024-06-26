// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_translate/test/src/services/translation_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i3;

import 'package:windmillcode_flutter_translate/src/contexts/localization_context.dart'
    as _i4;
import 'package:windmillcode_flutter_translate/src/models/locale_data.dart'
    as _i2;
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

class _FakeLocaleData_0 extends _i1.SmartFake implements _i2.LocaleData {
  _FakeLocaleData_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLocale_1 extends _i1.SmartFake implements _i3.Locale {
  _FakeLocale_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LocalizationContext].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalizationContext extends _i1.Mock
    implements _i4.LocalizationContext {
  MockLocalizationContext() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.LocaleData get current => (super.noSuchMethod(
        Invocation.getter(#current),
        returnValue: _FakeLocaleData_0(
          this,
          Invocation.getter(#current),
        ),
      ) as _i2.LocaleData);

  @override
  dynamic update(_i2.LocaleData? data) => super.noSuchMethod(Invocation.method(
        #update,
        [data],
      ));
}

/// A class which mocks [LocaleData].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocaleData extends _i1.Mock implements _i2.LocaleData {
  MockLocaleData() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Locale get locale => (super.noSuchMethod(
        Invocation.getter(#locale),
        returnValue: _FakeLocale_1(
          this,
          Invocation.getter(#locale),
        ),
      ) as _i3.Locale);

  @override
  set locale(_i3.Locale? _locale) => super.noSuchMethod(
        Invocation.setter(
          #locale,
          _locale,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, dynamic> get localizations => (super.noSuchMethod(
        Invocation.getter(#localizations),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  set localizations(Map<String, dynamic>? _localizations) => super.noSuchMethod(
        Invocation.setter(
          #localizations,
          _localizations,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set fallbackLocalizations(Map<String, dynamic>? _fallbackLocalizations) =>
      super.noSuchMethod(
        Invocation.setter(
          #fallbackLocalizations,
          _fallbackLocalizations,
        ),
        returnValueForMissingStub: null,
      );
}
