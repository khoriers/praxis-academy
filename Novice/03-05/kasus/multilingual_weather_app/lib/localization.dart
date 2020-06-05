import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Localization {
  final Locale locale;

  Localization({this.locale});

  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Fake Weather',
      'hint': 'Enter a city',
    },
    'id': {
      'title': 'Cuaca Palsu',
      'hint': 'Masukkan kota',
    }
  };

  String get getTitle => _localizedValues[locale.languageCode]['title'];

  String get getHint => _localizedValues[locale.languageCode]['hint'];
}

class LocalizationDelegate extends LocalizationsDelegate<Localization> {
  const LocalizationDelegate();
  @override
  bool isSupported(Locale locale) => ['en', 'id'].contains(locale.languageCode);

  @override
  Future<Localization> load(Locale locale) {
    return SynchronousFuture<Localization>(Localization(locale: locale));
  }

  @override
  bool shouldReload(LocalizationDelegate old) => false;
}
