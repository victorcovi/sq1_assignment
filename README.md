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

_\*This project was build and tested with flutter version 3.24.4._

### Downloading and installing project ✨

```sh
git clone https://github.com/youcardscollection/YouCards_app.git
```

```sh
flutter pub get
```

### Setup environments and secrets

Create the **environment** folder in the project root and define 3 files inside of it corresponding to the 3 different flavours (you can also download the files in the link below).

Also before testing in Android define a **secrets.properties** file inside the android directory.

```
sq1_assignment
|-- android/
  |-- secrets.properties
|-- environment/
  |-- development_key.json
  |-- production_key.json
  |-- staging_key.json
|-- lib/
...
```

[Download files](https://drive.proton.me/urls/CM6Y693B80#0xMaToSrri7C)
_\*Remember to replace VALID_API_KEY_HERE with your google maps api key in the 4 files._

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
