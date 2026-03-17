
name: stud_time
description: Inclusive AI EdTech prototype for South Africa
publish_to: 'none'
version: 0.1.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  provider: ^6.0.5
  intl: ^0.19.0
  flutter_tts: ^3.8.3
  shared_preferences: ^2.2.2
  sqflite: ^2.3.0
  path_provider: ^2.1.2

  # For recording (placeholder API surface; implement later)
  permission_handler: ^11.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^4.0.0

flutter:
  uses-material-design: true
  assets:
    - assets/locales/en.json
    - assets/locales/zu.json
    - assets/locales/st.json
    - assets/locales/af.json
