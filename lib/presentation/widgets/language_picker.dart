import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webappfolio/l10n/gen_l10n/app_localizations.dart';
import 'package:webappfolio/presentation/app/app.dart';
import 'package:webappfolio/presentation/utils/language_local.dart';

class LanguagePicker extends ConsumerWidget {
  const LanguagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        return DropdownButton<Locale>(
          focusColor: Colors.transparent,
          iconDisabledColor: Theme.of(context).colorScheme.primary,
          iconEnabledColor: Theme.of(context).colorScheme.primary,
          style: Theme.of(context).textTheme.titleLarge,
          value: ref.watch(localeProvider),
          onChanged: (locale) {
            if (locale == null) return;
            ref.read(localeProvider.notifier).update((state) => locale);
          },
          items: AppLocalizations.supportedLocales.map<DropdownMenuItem<Locale>>((Locale value) {
            return DropdownMenuItem<Locale>(
              value: value,
              child: Text(LanguageLocal()
                  .getDisplayLanguage(value.languageCode)["name"],style: Theme.of(context).textTheme.titleSmall,),
            );
          }).toList(),
        );

  }
}
