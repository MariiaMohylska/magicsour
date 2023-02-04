import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class S {
  static AppLocalizations? _instance;

  S(AppLocalizations? appLocalizations) {
    _instance ??= appLocalizations;
  }

  static AppLocalizations? get instance => _instance;
}