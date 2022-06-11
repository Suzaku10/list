# credibook_challange

Test For Credibook

## Getting Started (Requirement)
- Flutter 3.0.1
- Dart version 2.17.1

### How To Build :
 Just Provide for Android Studio :
 - Build prod version :
 flutter build apk --split-per-abi --flavor prod

 - Build dev version :
 flutter build apk --split-per-abi --flavor dev

  - Run prod version :
  flutter run --flavor prod

  - Run dev version :
  flutter run --flavor dev

 VSCode :
 - search in google how to create launch.json with above setting

 IOS can running, with this flutter run --flavor dev,
 but for build archive/ipa must register appbundle Id first, which is must pay $99 per annual.

### Library/3rd Party Used :
 - [mobx](https://pub.dev/packages/mobx) for state management
 - [intl](https://pub.dev/packages/intl) for localization
 - [share_plus](https://pub.dev/packages/share_plus) replacement for discontinue package (https://pub.dev/packages/share)
 - [screenshot](https://pub.dev/packages/screenshot) for screenshot
 - [dio](https://pub.dev/packages/dio) for http request
 - [auto_route](https://pub.dev/packages/auto_route) for route management
 - [flutter_svg_provider](https://pub.dev/packages/flutter_svg_provider) for using Svg from assets
 - [flutter_mobx](https://pub.dev/packages/flutter_mobx)

### Folder Structure
  Using [DDD](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/) design pattern but not strict.
  - lib/application => for logic/store
  - lib/domain => for model, constant, or interface
  - lib/infrastructure => for implementation of interface
  - lib/presentation => for component, UI, or page
  - lib/utilities => for utilities
  - lib/utilities/i10n => for localization (intl_en.arb for english translation) (intl_id.arb for indonesian translation)

### Misc
 - To Generate localization use plugin in android studio/vscode Flutter intl, every added new key value in arb file, this will auto generate localization.
 - https://api.imgflip.com/get_memes for open source api

## Find Me on :
 - [linkedIn](https://www.linkedin.com/in/yudhistira-yoga-0872a6184)
 - [Email](mailto:Yudhistiray198@gmail.com)
 - [Github](https://github.com/Suzaku10)

