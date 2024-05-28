# Windmillcode Flutter Translate

main is production branch dev is development branch


[<img src="https://github.com/Windmillcode/flutter_translate/raw/master/resources/images/flutter_translate.png" />](https://github.com/Windmillcode/flutter_translate/)

[![pub package](https://img.shields.io/pub/v/windmillcode_flutter_translate.svg?color=important)](https://pub.dev/packages/windmillcode_flutter_translate)
<a href="https://github.com/Solido/awesome-flutter">
   <img alt="Awesome Flutter" src="https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true" />
</a>
[![License: MIT](https://img.shields.io/badge/License-MIT-ff69b4.svg)](https://github.com/Windmillcode/flutter_translate/blob/master/LICENSE)
[![Flutter.io](https://img.shields.io/badge/Flutter-Website-deepskyblue.svg)](https://flutter.io/)

---

Flutter Translate is a fully featured localization / internationalization (i18n) library for Flutter.

It lets you define translations for your content in different languages and switch between them easily.

## Example
<img src="https://raw.githubusercontent.com/Windmillcode/flutter_translate/master/resources/gifs/flutter_translate_screen.gif" width="300"/>

## Features

* Very easy to use
* ```Mobile```, ```Web``` and ```Desktop``` support
* ```Pluralization``` and ```Duals``` support
* Supports both ``languageCode (en)`` and ``languageCode_countryCode (en_US)`` locale formats
* Automatically ```save & restore``` the selected locale [with a simple implementation](https://github.com/Windmillcode/flutter_translate/wiki/2.-Automatically-saving-&-restoring-the-selected-locale)
* Full support for ```right-to-left``` locales
* ``Fallback`` locale support in case the system locale is unsupported
* Supports both ``inline or nested`` JSON

## Documentation

Complete documentation is available [on the wiki page](https://github.com/Windmillcode/flutter_translate/wiki).

To get started please see [Installation, Configuration & Usage](https://github.com/Windmillcode/flutter_translate/wiki/1.-Installation,-Configuration-&-Usage).

## Example

https://github.com/Windmillcode/flutter_translate/tree/master/example

## Issues
Please file any issues, bugs or feature request [here](https://github.com/Windmillcode/flutter_translate/issues).

## License

This project is licensed under the [MIT License](https://github.com/Windmillcode/flutter_translate/blob/master/LICENSE)


## v5.0.0 updates

To illustrate the use of the `translate` function with a JSON structure that includes nested objects and lists, we'll expand our example to include a more complex structure. In this scenario, our localization files will have keys that point to nested objects and arrays, providing a more intricate example of how you might structure your localized content.

Here's an extended example of the JSON structure for English (`en.json`) and Spanish (`es.json`), including lists within the nested objects:

**en.json:**
```json
{
  "dashboard": {
    "title": "Dashboard",
    "notifications": [
      "You have {count} new messages",
      "Your subscription ends in {days} days",
      "New features available!"
    ],
    "menu": {
      "home": "Home",
      "profile": "Profile",
      "settings": "Settings"
    }
  }
}
```

**es.json:**
```json
{
  "dashboard": {
    "title": "Tablero",
    "notifications": [
      "Tienes {count} mensajes nuevos",
      "Tu suscripción termina en {days} días",
      "¡Nuevas funciones disponibles!"
    ],
    "menu": {
      "home": "Inicio",
      "profile": "Perfil",
      "settings": "Configuración"
    }
  }
}
```

Now, let's see how we can use the `translate` function to access these nested and list-based translations:

### Accessing Nested Objects
To access translations within nested objects, you concatenate the keys using a dot (`.`) notation.

```dart
String title = translate("dashboard.title");
print(title); // Outputs "Dashboard" in English or "Tablero" in Spanish.
```

### Accessing List Items
To access a specific item in a list, you would also use the dot notation followed by the index of the item in the list.

```dart
String messageNotification = translate("dashboard.notifications.0", args: {"count": 5});
print(messageNotification); // Outputs "You have 5 new messages" in English or "Tienes 5 mensajes nuevos" in Spanish.

String subscriptionNotification = translate("dashboard.notifications.1", args: {"days": 3});
print(subscriptionNotification); // Outputs "Your subscription ends in 3 days" in English or "Tu suscripción termina en 3 días" in Spanish.
```

### Accessing Nested Object within an Array
If the JSON structure had nested objects within an array, you would access them similarly, using the index and then the key.

Assuming a structure (not shown in the above JSON) like `"dashboard": { "alerts": [{ "type": "System", "message": "An update is available." }] }`, you would access the message like so:

```dart
String alertMessage = translate("dashboard.alerts.0.message");
print(alertMessage); // Assuming it's properly localized, it would output the message based on the current locale.
```

These examples demonstrate how you can retrieve localized strings from a complex JSON structure using the `translate` function, accommodating dynamic values and accessing nested and array-based structures.

To illustrate how to use the `translatePlural` function for handling pluralization based on the current locale, we'll need to expand our JSON structure to include plural forms. The `Intl` package, which is often used in conjunction with localization in Flutter, supports different plural categories like zero, one, two, few, many, and other, depending on the language's rules.

Let's modify our `en.json` and `es.json` files to include a pluralized key for messages. Note that different languages have different pluralization rules, and the `Intl` package expects you to provide translations for all these categories, even if they're not all used in every language.

**en.json:**
```json
{
  "dashboard": {
    "title": "Dashboard",
    "messages": {
      "zero": "You have no new messages",
      "one": "You have one new message",
      "other": "You have {count} new messages"
    },
    "menu": {
      "home": "Home",
      "profile": "Profile",
      "settings": "Settings"
    }
  }
}
```

**es.json:**
```json
{
  "dashboard": {
    "title": "Tablero",
    "messages": {
      "zero": "No tienes mensajes nuevos",
      "one": "Tienes un mensaje nuevo",
      "other": "Tienes {count} mensajes nuevos"
    },
    "menu": {
      "home": "Inicio",
      "profile": "Perfil",
      "settings": "Configuración"
    }
  }
}
```

Now, here's how you can use the `translatePlural` function to select the appropriate plural form based on the number of messages:

```dart
String noMessages = translatePlural("dashboard.messages", 0);
print(noMessages); // Outputs "You have no new messages" in English or "No tienes mensajes nuevos" in Spanish.

String oneMessage = translatePlural("dashboard.messages", 1);
print(oneMessage); // Outputs "You have one new message" in English or "Tienes un mensaje nuevo" in Spanish.

String multipleMessages = translatePlural("dashboard.messages", 5, args: {"count": 5});
print(multipleMessages); // Outputs "You have 5 new messages" in English or "Tienes 5 mensajes nuevos" in Spanish.
```

In this code, `translatePlural` is used to get the correct translation based on the `value` provided. The `value` determines which plural form to use, and the optional `args` map allows for dynamic values to be inserted into the translation string, similar to how you use `translate` for non-pluralized strings.

### 1. Using Lists: Displaying Localized Options in a ListView

Given a list in your localization files like this:

```json
{
  "options": ["Option 1", "Option 2", "Option 3"]
}
```

You can create a `ListView` that dynamically translates each item:

```dart
Widget buildOptionList(BuildContext context) {
  // Assuming the number of options is known
  int optionCount = 3;

  return ListView.builder(
    itemCount: optionCount,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(translate('options.$index')),
      );
    },
  );
}
```

### 2. Using Maps: Dynamic Key-Value Localization

Consider a map in your localization files:

```json
{
  "settings": {
    "volume": "Volume",
    "brightness": "Brightness"
  }
}
```

To display this in a UI component like `ListView`, you can:

```dart
Widget buildSettingsList(BuildContext context) {
  Map<String, String> settings = getValueAtKeyPath('settings');

  return ListView.builder(
    itemCount: settings.length,
    itemBuilder: (context, index) {
      String key = settings.keys.elementAt(index);
      return ListTile(
        title: Text(translate(key)),
        subtitle: Text(translate("settings.$key")),
      );
    },
  );
}
```

### 3. Combining Lists and Maps: Nested Localization

Assuming a combination of lists and maps:

```json
{
  "categories": ["books", "movies"],
  "books": ["Fiction", "Non-fiction"],
  "movies": ["Action", "Comedy"]
}
```

Displaying nested structures in a UI, such as `ExpansionTile`:

```dart
Widget buildCategoryList(BuildContext context) {
  List<String> categories = getValueAtKeyPath('categories');

  return ListView.builder(
    itemCount: categories.length,
    itemBuilder: (context, index) {
      String category = categories[index];
      List<String> subcategories = getValueAtKeyPath(category);

      return ExpansionTile(
        title: Text(translate(category)),
        children: subcategories.map((subcategory) {
          return ListTile(
            title: Text(translate('$category.$subcategory')),
          );
        }).toList(),
      );
    },
  );
}
```

In these examples, the `translate` function is used in a way that respects the dynamic nature of the list and map structures, ensuring that the localized strings are fetched correctly and dynamically based on the index or keys within the data structures.

To create examples that use `getValueAtKeyPath` with `translatePlural`, we'll leverage the dynamic nature of Dart's access to nested JSON structures. We'll assume the JSON localization files contain pluralized strings and demonstrate how to construct key paths dynamically to use with `translatePlural`. Let's work through examples using Lists, Maps, and a combination of both.

### 1. Using Lists: Displaying Pluralized Localized Options

Given a list with pluralized keys in your localization files like this:

```json
{
  "messages": [
    {"key": "inbox_message", "zero": "No messages", "one": "One message", "other": "{} messages"},
    {"key": "sent_message", "zero": "No messages sent", "one": "One message sent", "other": "{} messages sent"}
  ]
}
```

You can create a method to display the pluralized messages based on the count:

```dart
Widget buildMessageList(BuildContext context, List<int> messageCounts) {
  return ListView.builder(
    itemCount: messageCounts.length,
    itemBuilder: (context, index) {
      String keyPath = 'messages.$index.key';
      int count = messageCounts[index];
      return ListTile(
        title: Text(translatePlural(keyPath, count)),
      );
    },
  );
}
```

### 2. Using Maps: Pluralized Settings Localization

Consider a map in your localization files with pluralized values:

```json
{
  "notifications": {
    "email": {"zero": "No emails", "one": "One email", "other": "{} emails"},
    "alert": {"zero": "No alerts", "one": "One alert", "other": "{} alerts"}
  }
}
```

Display these settings with pluralization:

```dart
Widget buildNotificationSettings(BuildContext context, Map<String, int> notificationCounts) {
  return ListView.builder(
    itemCount: notificationCounts.length,
    itemBuilder: (context, index) {
      String key = notificationCounts.keys.elementAt(index);
      int count = notificationCounts[key];
      return ListTile(
        title: Text(translatePlural('notifications.$key', count)),
      );
    },
  );
}
```

### 3. Combining Lists and Maps: Nested Pluralized Localization

Assume a combination of lists and maps for categories and their items, with pluralization:

```json
{
  "categories": ["emails", "alerts"],
  "emails": {"zero": "No emails", "one": "One email", "other": "{} emails"},
  "alerts": {"zero": "No alerts", "one": "One alert", "other": "{} alerts"}
}
```

Displaying these in a UI, such as an `ExpansionTile`, with counts:

```dart
Widget buildCategoryList(BuildContext context, Map<String, int> itemCounts) {
  List<String> categories = getValueAtKeyPath('categories');

  return ListView.builder(
    itemCount: categories.length,
    itemBuilder: (context, index) {
      String category = categories[index];
      int count = itemCounts[category] ?? 0;

      return ExpansionTile(
        title: Text(translatePlural(category, count)),
      );
    },
  );
}
```

In these examples, `translatePlural` is dynamically used with key paths constructed on the fly, similar to how `translate` was used in your provided examples, enabling the handling of pluralized translations in a dynamic and nested data structure.
