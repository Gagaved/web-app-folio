import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webappfolio/l10n/gen_l10n/app_localizations.dart';
import 'package:webappfolio/presentation/utils/launch_url.dart';
import 'package:webappfolio/presentation/widgets/app_bar.dart';
import 'package:webappfolio/presentation/widgets/clickable_text.dart';
class _Delimiter extends StatelessWidget {
  const _Delimiter();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Theme.of(context).primaryColor,
    );
  }
}

class Highlighter extends StatelessWidget {
  const Highlighter({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(00),
          color: Theme.of(context).highlightColor,
        ),
        child: child,
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppTopBar(),
      ),
      body: Center(
        child: SizedBox(
          width: 700,
          child: ListView(
            shrinkWrap: true,
            children: const [
              Highlighter(child: _Title()),
              _Delimiter(),
              Highlighter(child: _LanguageAndFrameworks()),
              _Delimiter(),
              Highlighter(child: _Projects()),
              _Delimiter(),
              Highlighter(child: _Experience()),
              _Delimiter(),
              Highlighter(child: _WorkWith()),
              _Delimiter(),
              Highlighter(child: _Education()),
              _Delimiter(),
              Highlighter(child: _SoftSkills()),
            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.titleName,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.titleTelegram),
              ClickableText(
                text: '@Gagaved',
                onTap: () {
                  Clipboard.setData(const ClipboardData(text: '@Gagaved'));
                  launchInBrowser(Uri.parse('https://t.me/Gagaved'));
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.titleEmail),
              ClickableText(
                text: 'Gagaved@hotmail.com',
                onTap: () {
                  Clipboard.setData(
                      const ClipboardData(text: 'Gagaved@hotmail.com'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(AppLocalizations.of(context)!
                            .titleCopiedToClipboard)),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.titleGithub),
              ClickableText(
                text: 'https://github.com/Gagaved',
                onTap: () async {
                  const url = 'https://github.com/Gagaved';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchInBrowser(Uri.parse(url));
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageAndFrameworks extends StatelessWidget {
  const _LanguageAndFrameworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.languageAndFrameworksTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.languageAndFrameworksLanguages,
          ),
          const SizedBox(height: 10),
          Text(AppLocalizations.of(context)!.languageAndFrameworksFrameworks),
          const SizedBox(height: 10),
          Text(
              AppLocalizations.of(context)!.languageAndFrameworksLessConfident),
        ],
      ),
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.projectsTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20,),
          _Project(
              year: '2023',
              title: localizations.projectTitle1,
              description: localizations.projectDescription1,
              link: "Play Market ${localizations.projectLink}",
    onTap: () {
    launchInBrowser(
    Uri.parse("https://play.google.com/store/apps/details?id=ru.ignatmorozov.inmind"));
    },
          ),
          const SizedBox(height: 10),
          _Project(
            year: '2023',
            title: localizations.projectTitle2,
            description: localizations.projectDescription2,
            link: 'Github rep. ${localizations.projectLink}',
            onTap: () {
              launchInBrowser(
                  Uri.parse("https://github.com/Gagaved/web-app-folio"));
            },
          ),
          const SizedBox(height: 10),
          _Project(
            year: '2023',
            title: localizations.projectTitle3,
            description: localizations.projectDescription3,
            link: 'Github rep. ${localizations.projectLink}',
            onTap: () {
              launchInBrowser(Uri.parse(
                  "https://github.com/Gagaved/gas_distribution_station_model"));
            },
          ),
          const SizedBox(height: 10),
          _Project(
            year: '2022',
            title: localizations.projectTitle4,
            description: localizations.projectDescription4,
            link: 'Github rep. '+localizations.projectLink,
            onTap: () {
              launchInBrowser(
                  Uri.parse("https://github.com/Gagaved/Atb-booking"));
            },
          ),
          const SizedBox(height: 10),
          _Project(
              year: '2021',
              title: localizations.projectTitle5,
              description: localizations.projectDescription5,
              link: ''),
          const SizedBox(height: 10),
          _Project(
            year: '2021',
            title: localizations.projectTitle6,
            description: localizations.projectDescription6,
            link: 'Github rep. ${localizations.projectLink}',
            onTap: () {
              launchInBrowser(Uri.parse(
                  "https://github.com/Gagaved/fefu-android-base-repo"));
            },
          ),
        ],
      ),
    );
  }
}

class _Project extends StatelessWidget {
  final String year;
  final String title;
  final String description;
  final String link;
  final VoidCallback? onTap;

  const _Project({
    required this.year,
    required this.title,
    required this.description,
    required this.link,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$year - $title',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(description),
        GestureDetector(
          onTap: () {
            // Откройте ссылку на проект с использованием url_launcher
          },
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              link,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _Experience extends StatelessWidget {
  const _Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localizations = AppLocalizations.of(context)!;
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.experienceTitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          _ExperienceItem(text: localizations.experienceDartFlutter),
          _ExperienceItem(text: localizations.experienceRenderingMechanism),
          _ExperienceItem(text: localizations.experienceKeys),
          _ExperienceItem(text: localizations.experienceAsync),
          _ExperienceItem(text: localizations.experienceOop),
          _ExperienceItem(text: localizations.experienceAlgorithms),
          _ExperienceItem(text: localizations.experienceCleanArchitecture),
        ],
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final String text;

  const _ExperienceItem({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '• $text',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class _WorkWith extends StatelessWidget {
  const _WorkWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localizations.workWithTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _WorkWithItem(
            title: localizations.workWithItemStateManagement,
            items: [
              localizations.workWithItemStateManagementSubItem1,
              localizations.workWithItemStateManagementSubItem2,
            ],
          ),
          _WorkWithItem(
            title: localizations.workWithItemDatabases,
            items: [
              localizations.workWithItemDatabasesSubItem1,
              localizations.workWithItemDatabasesSubItem2,
            ],
          ),
          _WorkWithItem(
            title: localizations.workWithItemAuthentication,
            items: [
              localizations.workWithItemAuthenticationSubItem,
            ],
          ),
          _WorkWithItem(
            title: localizations.workWithItemLocalization,
            items: [
              localizations.workWithItemLocalizationSubItem,
            ],
          ),
          _WorkWithItem(
            title: localizations.workWithItemDi,
            items: [
              localizations.workWithItemDiSubItem,
            ],
          ),
          _WorkWithItem(
            title: localizations.workWithItemRest,
            items: [
              localizations.workWithItemRestSubItem,
            ],
          ),
        ],
      ),
    );
  }
}

class _WorkWithItem extends StatelessWidget {
  final String title;
  final List<String> items;

  const _WorkWithItem({
    required this.title,
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) => Text('• $item')).toList(),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _Education extends StatelessWidget {
  const _Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localizations.educationTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            localizations.educationInfo,
          ),
        ],
      ),
    );
  }
}

class _SoftSkills extends StatelessWidget {
  const _SoftSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localizations.softSkillsTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            localizations.softSkillsCommunicative,
          ),
          Text(
            localizations.softSkillsPatient,
          ),
          Text(
            localizations.softSkillsSelfOrganized,
          ),
        ],
      ),
    );
  }
}
