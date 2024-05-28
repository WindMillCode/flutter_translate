## [1.0.0]

- Initial release.

## [1.0.1]

- Removed the flutter_localizations dependency.

## [1.0.2]

- Simplified the localization initialization.

## [1.1.0]

- Implemented a global translate method.
- Removed the static Translate class.
- Localization is now a singleton.

## [1.2.0]

- Implemented pluralization.
- Fixed multiple issues.
- translate, translatePlural and changeLanguage methods are now global.

## [1.2.2]

- Missing localizations now return the full key path.

## [1.2.5]

- Fixed possible exception when adding an extra slash to the ```basePath```

## [1.3.0]

- Implemented the onLocaleChanged callback

## [1.3.1]

- Implemented the localeToString method

## [1.3.2]

- Fixed some callback issues for onLocaleChanged

## [1.4.0]

- Implemented support for automatically saving & restoring the selected locale using shared preferences

## [1.4.0+1]

- Added the Awesome Flutter badge

## [1.4.0+2]

- Fixed the example to adapt the changes to BinaryMessenger (https://github.com/flutter/flutter/pull/38464)

## [1.5.0]

- Fixed the blackscreen issue on startup
- Fixed the iOS issue regarding the device locale
- The current device locale is now used on startup

## [1.5.1]

- Updated the flutter_device_locale dependency to avoid a possible exception
- Updated the example to AndroidX

## [1.5.2]

- Updated the flutter_device_locale version

## [1.5.3]

- Renamed packages, updated license and links

## [1.5.7]

- Updated the examples
- Fixed some issues with flutter_device_locale and swift

## [1.6.0]

- Web applications are now supported
- Updated the examples with web support

## [2.0.0]

- Removed flutter_device_locale dependency
- The native flutter locale retrieval method is now used
- Added support for desktop
- Added examples for windows desktop

## [2.0.1]

- Fixed web support

## [3.0.0]

- Null safety support

## [3.0.1]

- Code format

## [3.1.0]

- Updated dependencies

## [4.0.0]

- Plurals functionality is now based on Intl rules (https://api.flutter.dev/flutter/intl/Intl/plural.html)
- Supported formats are: zero, one, two, few, many, other

## [4.0.2]

- Fixed null safety compile issue

## [4.0.3]

- Fixed null-aware operation exception

## [4.0.4]

- Bump intl version to support latest Flutter version

## [5.0.4]

Complete with Changelog Test Cases (of the whole library!) and docs

[UPDATE] Implemented a new method getValueAtKeyPath to retrieve values from nested structures in translation data. This method allows direct access to nested data using a key path string, enhancing data retrieval efficiency. For example, getValueAtKeyPath("menu.items.item1") will access the value of item1 within items in the menu map.

[BUG] Addressed an issue in the translation retrieval logic where the previous method did not adequately handle nested structures. The updated approach ensures accurate retrieval of nested translations, improving the robustness of translation handling.

[COMPLEX MERGE] Refined the algorithm for extracting plural forms from translation data, allowing for more efficient access to pluralized translation entries. This enhancement is particularly useful for languages with complex pluralization rules, ensuring accurate and efficient retrieval of the correct plural form. For instance, accessing different plural forms of a word is now more streamlined, like getValueAtKeyPath("messages.count", localizations) to fetch the appropriate plural form based on the count.

