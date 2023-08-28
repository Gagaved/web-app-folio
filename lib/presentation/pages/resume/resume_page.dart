import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webappfolio/presentation/widgets/app_bar.dart';
import 'package:webappfolio/presentation/widgets/clickable_text.dart';

Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    // throw Exception('Could not launch $url');
  }
}

class _Delimiter extends StatelessWidget {
  const _Delimiter({super.key});

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

        color: Theme.of(context).highlightColor,),
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 700,
            child: const Column(
              children: [
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
          const Text(
            'Морозов Игнат',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text('telegram: '),
              ClickableText(
                text: '@Gagaved',
                onTap: () {
                  Clipboard.setData(const ClipboardData(text: '@Gagaved'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Telegram скопирован в буфер обмена')),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text("email: "),
              ClickableText(
                text: 'Gagaved@hotmail.com',
                onTap: () {
                  Clipboard.setData(
                      const ClipboardData(text: 'Gagaved@hotmail.com'));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Email скопирован в буфер обмена')),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('Github: '),
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Языки и фреймворки',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Знаю, могу и хочу писать на следующих языках: Dart, kotlin, C, python. C++',
          ),
          SizedBox(height: 10),
          Text(
            'С чем я работал: Flutter, Android NDK, Git, FastApi, Cuda',
          ),
          SizedBox(height: 10),
          Text(
            'Менее уверенно, но знаю основы этих языков: Js, C#',
          ),
        ],
      ),
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Проекты',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          _Project(
            year: '2021',
            title: 'Фитнес трекер на Android NDK',
            description: 'Разработал фитнес трекер на платформе Android NDK.',
            link: 'Ссылка', // Замените на реальную ссылку
          ),
          _Project(
            year: '2021',
            title: 'Приложение для швейной фабрики на Android NDK',
            description:
                'Участвовал в командной разработке приложения для швейной фабрики на Android NDK. Этот проект был выполнен в рамках курсового проекта.',
            link: 'Ссылка', // Замените на реальную ссылку
          ),
          _Project(
            year: '2022',
            title:
                'MVP приложение для бронирования мест в офисе. Plug-in ATB и FEFU.',
            description:
                'Разработали командой из 4 человек клиент-серверное MVP-приложение для бронирования рабочих мест в офисе банка.',
            link: 'Ссылка', // Замените на реальную ссылку
          ),
          _Project(
            year: '2023',
            title:
            'Приложение для инженерной школы FEFU',
            description:
            'Разработал Flutter windows приложение для тренажер-симулятор для инженерной школы FEFU, имитирующий работу газораспределительной станции, с возможностью проводить гидравлический расчет по схеме',
            link: 'Ссылка', // Замените на реальную ссылку
          ),
          _Project(
            year: '2023',
            title:
            'Разработка собственного сайта',
            description:
            'Веду разработку Flutter web приложения для своего сайта. www.ignatmorozov.ru',
            link: 'Ссылка', // Замените на реальную ссылку
          ),
          // Добавьте остальные проекты по аналогии
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

  const _Project({
    required this.year,
    required this.title,
    required this.description,
    required this.link,
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
          child: Text(
            link,
            style: const TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline),
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
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Опыт',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _ExperienceItem(
            text: 'На Dart + Flutter пишу уже около 1.5 лет.',
          ),
          _ExperienceItem(
            text: 'Понимаю, как работает механизм рендеринга Flutter, Diffing Algorithm Widget tree, Element tree, Render tree.',
          ),
          _ExperienceItem(
            text: 'Знаю зачем нужны global key, value key, unique key.',
          ),
          _ExperienceItem(
            text: 'Понимаю как работает "многопоточность" Dart\'а Isolate, Future, async/await.',
          ),
          _ExperienceItem(
            text: 'Понимаю концепцию наследования в Dart, Extensions, Mixins и т.д.',
          ),
          _ExperienceItem(
            text: 'Свободно ориентируюсь в языке и фреймворке. Знаком с принципами REST, SOLID, с архитектурными паттернами MVVM MVC, обладаю навыками объектно-ориентированного программирования, понимаю концепции классов, объектов, наследования, инкапсуляции и полиморфизма.',
          ),
          _ExperienceItem(
            text: 'Знаю алгоритмы и структуры данных: сортировки, поиски, списки, стеки и очереди и т.д.',
          ),
          _ExperienceItem(
            text: 'Понимаю принципы чистой архитектуры: разделение на слои, зависимости и инверсию управления.',
          ),
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
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'С чем работал',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          _WorkWithItem(
            title: 'Стейтменеджмент',
            items: [
              'Bloc',
              'Небольшой опыт работы с Riverpod (этот сайт)',
            ],
          ),
          _WorkWithItem(
            title: 'Базы данных',
            items: [
              'Работал с Drift',
              'Небольшой опыт работы с Floor',
            ],
          ),
          _WorkWithItem(
            title: 'Аутентификация',
            items: [
              'Интегрировал Firebase OAuth и Google Sign-In в собственное приложение',
            ],
          ),
          _WorkWithItem(
            title: 'Локализация',
            items: [
              'Применение intl в собственных проектах',
            ],
          ),
          _WorkWithItem(
            title: 'DI (Dependency Injection)',
            items: [
              'Использование getIt в собственных проектах',
            ],
          ),
          _WorkWithItem(
            title: 'REST',
            items: [
              'Работал с библиотекой Dio для HTTP-запросов',
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
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Образование',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Учусь в ДВФУ на 4 курсе по специальности «Прикладная математика и информатика»',
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
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Soft skills',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Я очень открытый и коммуникативный человек, легко могу найти общий язык с любым человеком. Достаточно терпелив, для меня нет никакой трудности несколько раз объяснять человеку какую-нибудь тему, пока он не поймет =)',
          ),
          Text(
            'Способен самоорганизовываться и организовывать других.',
          ),
        ],
      ),
    );
  }
}
