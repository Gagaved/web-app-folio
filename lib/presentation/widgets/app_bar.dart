import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webappfolio/l10n/gen_l10n/app_localizations.dart';
import 'package:webappfolio/presentation/app/app.dart';
import 'package:webappfolio/presentation/widgets/language_picker.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _HomeButton(),
          _ResumeButton(),
          //_BlogButton(),
          //_MyGamesButton(),
          Spacer(),
          LanguagePicker(),
          SizedBox(width: 10,),
          _ThemeModeSwitcher()
        ],
      ),
    );
  }
}

class _ResumeButton extends StatelessWidget {
  const _ResumeButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popUntil((route) => Navigator.canPop(context));
        Navigator.of(context).pushNamed(
          '/resume',
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            ModalRoute<dynamic>? currentRoute = ModalRoute.of(context);
            String? currentRouteName = currentRoute?.settings.name;
            if (currentRouteName == '/resume') {
              return Theme.of(context).colorScheme.secondary;
            }
            return Theme.of(context).colorScheme.surface;
          },
        ),
      ),
      child: Text(AppLocalizations.of(context)!.topBarResume),
    );
  }
}

class _BlogButton extends StatelessWidget {
  const _BlogButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popUntil((route) => Navigator.canPop(context));
        Navigator.of(context).pushNamed(
          '/blog',
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            ModalRoute<dynamic>? currentRoute = ModalRoute.of(context);
            String? currentRouteName = currentRoute?.settings.name;
            if (currentRouteName == '/blog') {
              return Theme.of(context).colorScheme.secondary;
            }
            return Colors.transparent;
          },
        ),
      ),
      child: Text(AppLocalizations.of(context)!.topBarBlog),
    );
  }
}

class _HomeButton extends StatelessWidget {
  const _HomeButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popUntil((route) => Navigator.canPop(context));
        Navigator.of(context).pushNamed(
          '/home',
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            ModalRoute<dynamic>? currentRoute = ModalRoute.of(context);
            String? currentRouteName = currentRoute?.settings.name;
            if (currentRouteName == '/home') {
              return Theme.of(context).colorScheme.secondary;
            }
            return Colors.transparent;
          },
        ),
      ),
      child: Text(AppLocalizations.of(context)!.topBarHome),
    );
  }
}

class _MyGamesButton extends StatelessWidget {
  const _MyGamesButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popUntil((route) => Navigator.canPop(context));
        Navigator.of(context).pushNamed(
          '/games',
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            ModalRoute<dynamic>? currentRoute = ModalRoute.of(context);
            String? currentRouteName = currentRoute?.settings.name;
            if (currentRouteName == '/games') {
              return Theme.of(context).colorScheme.secondary;
            }
            return Colors.transparent;
          },
        ),
      ),
      child: Text(
        AppLocalizations.of(context)!.topBarGames,
      ),
    );
  }
}

class _ThemeModeSwitcher extends ConsumerWidget {
  const _ThemeModeSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isDarkModeEnabled = ref.watch(themeProvider) == ThemeMode.dark;
    return DayNightSwitcherIcon(
      sunColor: Colors.orange,
      nightBackgroundColor: Theme.of(context).colorScheme.secondary,
      isDarkModeEnabled: isDarkModeEnabled,
      onStateChanged: (isDarkModeEnabled) {
        if (isDarkModeEnabled) {
          ref.read(themeProvider.notifier).update((state) => ThemeMode.dark);
        } else {
          ref.read(themeProvider.notifier).update((state) => ThemeMode.light);
        }
      },
    );
  }
}
