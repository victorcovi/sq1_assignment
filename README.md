# Sq1 Assignment

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A Very Good Project created with [Very Good CLI][very_good_cli_link]. Built under [BloC](https://bloclibrary.dev/architecture/) architecture.  
<br>

<p align="center">
<a href="https://bloclibrary.dev/#/architecture"><img src="https://bloclibrary.dev/_astro/bloc_architecture_full.CYn-T9Ox_Z20Hwr9.webp" alt="Bloc Architecture"></a>
</p>

---

## Project Installation & Configuration 👾

For setting up flutter and development environment, recommended following this guide: [very-good-flutter-setup](https://verygood.ventures/blog/very-good-flutter-setup).

### Downloading and installing project ✨

```sh
git clone https://github.com/youcardscollection/YouCards_app.git
```

```sh
flutter pub get
```

### Setup environment folder in project root

```
YouCards_app
|-- environment/
  |-- dev_key.json
  |-- prod_key.json
  |-- stg_key.json
|-- lib/
...
```

[environment.zip](https://youcardscollection.slack.com/files/U05DWPVHWG3/F06532WDVBN/environment.zip)

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart --dart-define-from-file environment/development_key.json

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart --dart-define-from-file environment/staging_key.json

# Production
$ flutter run --flavor production --target lib/main_production.dart --dart-define-from-file environment/production_key.json
```

_\*Sq1 Assignment works on iOS and Android._

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
