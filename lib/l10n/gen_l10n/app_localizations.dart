import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @topBarHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get topBarHome;

  /// No description provided for @topBarResume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get topBarResume;

  /// No description provided for @topBarGames.
  ///
  /// In en, this message translates to:
  /// **'Games'**
  String get topBarGames;

  /// No description provided for @topBarBlog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get topBarBlog;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to my website! Here, I showcase all my applications. Get acquainted with my creations below.'**
  String get homeWelcome;

  /// No description provided for @inMindDescription.
  ///
  /// In en, this message translates to:
  /// **'InMind! is an app for practicing mental calculations, designed to enhance mathematical thinking skills. It offers tasks of varying difficulty, timed practice options, and error analysis for more effective learning.'**
  String get inMindDescription;

  /// No description provided for @myApps.
  ///
  /// In en, this message translates to:
  /// **'my Apps'**
  String get myApps;

  /// No description provided for @privatePolicy.
  ///
  /// In en, this message translates to:
  /// **'private policy'**
  String get privatePolicy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @useOfTerms.
  ///
  /// In en, this message translates to:
  /// **'use of terms'**
  String get useOfTerms;

  /// No description provided for @titleName.
  ///
  /// In en, this message translates to:
  /// **'Morozov Ignat'**
  String get titleName;

  /// No description provided for @titleTelegram.
  ///
  /// In en, this message translates to:
  /// **'Telegram: '**
  String get titleTelegram;

  /// No description provided for @titleEmail.
  ///
  /// In en, this message translates to:
  /// **'Email: '**
  String get titleEmail;

  /// No description provided for @titleGithub.
  ///
  /// In en, this message translates to:
  /// **'Github: '**
  String get titleGithub;

  /// No description provided for @titleCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'copied to clipboard'**
  String get titleCopiedToClipboard;

  /// No description provided for @languageAndFrameworksTitle.
  ///
  /// In en, this message translates to:
  /// **'Languages and Frameworks'**
  String get languageAndFrameworksTitle;

  /// No description provided for @languageAndFrameworksLanguages.
  ///
  /// In en, this message translates to:
  /// **'I know, can, and want to write in the following languages: Dart, Kotlin, Python. C++'**
  String get languageAndFrameworksLanguages;

  /// No description provided for @languageAndFrameworksFrameworks.
  ///
  /// In en, this message translates to:
  /// **'What I\'ve worked with: Flutter, Android NDK, Git, Firebase, FastApi, Cuda'**
  String get languageAndFrameworksFrameworks;

  /// No description provided for @languageAndFrameworksLessConfident.
  ///
  /// In en, this message translates to:
  /// **'Less confidently, but I know the basics of these languages:  Js, C#'**
  String get languageAndFrameworksLessConfident;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projectsTitle;

  /// No description provided for @experienceTitle.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experienceTitle;

  /// No description provided for @educationTitle.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educationTitle;

  /// No description provided for @softSkillsTitle.
  ///
  /// In en, this message translates to:
  /// **'Soft skills'**
  String get softSkillsTitle;

  /// No description provided for @projectLink.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get projectLink;

  /// No description provided for @projectTitle1.
  ///
  /// In en, this message translates to:
  /// **'InMind! App for mental Counting Practice'**
  String get projectTitle1;

  /// No description provided for @projectTitle2.
  ///
  /// In en, this message translates to:
  /// **'Development of Personal Website'**
  String get projectTitle2;

  /// No description provided for @projectTitle3.
  ///
  /// In en, this message translates to:
  /// **'App for FEFU Engineering School'**
  String get projectTitle3;

  /// No description provided for @projectTitle4.
  ///
  /// In en, this message translates to:
  /// **'MVP Office Space Booking App. ATB and FEFU Plug-in.'**
  String get projectTitle4;

  /// No description provided for @projectTitle5.
  ///
  /// In en, this message translates to:
  /// **'App for Sewing Factory using Android NDK'**
  String get projectTitle5;

  /// No description provided for @projectTitle6.
  ///
  /// In en, this message translates to:
  /// **'Fitness Tracker using Android NDK'**
  String get projectTitle6;

  /// No description provided for @projectDescription1.
  ///
  /// In en, this message translates to:
  /// **'Developing an mental counting practice app on the Flutter Android platform with a Python+FastAPI backend. The app is published on the Play Market.'**
  String get projectDescription1;

  /// No description provided for @projectDescription2.
  ///
  /// In en, this message translates to:
  /// **'I\'m developing a Flutter web application for my personal website: www.ignatmorozov.ru'**
  String get projectDescription2;

  /// No description provided for @projectDescription3.
  ///
  /// In en, this message translates to:
  /// **'Developed a Flutter Windows application, a simulator for FEFU\'s engineering school, simulating the operation of a gas distribution station with hydraulic circuit calculations.'**
  String get projectDescription3;

  /// No description provided for @projectDescription4.
  ///
  /// In en, this message translates to:
  /// **'A team of 4 developed a client-server MVP office space booking app for a bank.'**
  String get projectDescription4;

  /// No description provided for @projectDescription5.
  ///
  /// In en, this message translates to:
  /// **'Participated in the team development of an Android NDK app for a sewing factory. This project was part of a coursework.'**
  String get projectDescription5;

  /// No description provided for @projectDescription6.
  ///
  /// In en, this message translates to:
  /// **'Developed a fitness tracker on the Android NDK platform.'**
  String get projectDescription6;

  /// No description provided for @experienceDartFlutter.
  ///
  /// In en, this message translates to:
  /// **'I\'ve been using Dart + Flutter for about a year and a half.'**
  String get experienceDartFlutter;

  /// No description provided for @experienceRenderingMechanism.
  ///
  /// In en, this message translates to:
  /// **'I understand how Flutter\'s rendering mechanism works, including Diffing Algorithm Widget tree, Element tree, Render tree.'**
  String get experienceRenderingMechanism;

  /// No description provided for @experiencePlayMarket.
  ///
  /// In en, this message translates to:
  /// **'I independently published the application on the Play Market and I am familiar with the entire publication pipeline.'**
  String get experiencePlayMarket;

  /// No description provided for @experienceKeys.
  ///
  /// In en, this message translates to:
  /// **'I know the purpose of global key, value key, unique key.'**
  String get experienceKeys;

  /// No description provided for @experienceAsync.
  ///
  /// In en, this message translates to:
  /// **'I understand Dart\'s concurrency mechanisms: Isolate, Future, async/await.'**
  String get experienceAsync;

  /// No description provided for @experienceOop.
  ///
  /// In en, this message translates to:
  /// **'I\'m comfortable with the language and framework. Familiar with REST, SOLID, KISS, DRY, principles, MVVM MVC architectural patterns, and have object-oriented programming skills.'**
  String get experienceOop;

  /// No description provided for @experienceAlgorithms.
  ///
  /// In en, this message translates to:
  /// **'I know algorithms and data structures: sorting, searching, lists, stacks, queues, etc.'**
  String get experienceAlgorithms;

  /// No description provided for @experienceCleanArchitecture.
  ///
  /// In en, this message translates to:
  /// **'I understand clean architecture principles: layer separation, dependencies, and inversion of control.'**
  String get experienceCleanArchitecture;

  /// No description provided for @workWithTitle.
  ///
  /// In en, this message translates to:
  /// **'Experience with'**
  String get workWithTitle;

  /// No description provided for @workWithItemStateManagement.
  ///
  /// In en, this message translates to:
  /// **'State management'**
  String get workWithItemStateManagement;

  /// No description provided for @workWithItemStateManagementSubItem1.
  ///
  /// In en, this message translates to:
  /// **'Bloc'**
  String get workWithItemStateManagementSubItem1;

  /// No description provided for @workWithItemStateManagementSubItem2.
  ///
  /// In en, this message translates to:
  /// **'Some experience with Riverpod (this website)'**
  String get workWithItemStateManagementSubItem2;

  /// No description provided for @workWithItemDatabases.
  ///
  /// In en, this message translates to:
  /// **'Databases'**
  String get workWithItemDatabases;

  /// No description provided for @workWithItemDatabasesSubItem1.
  ///
  /// In en, this message translates to:
  /// **'Worked with Drift'**
  String get workWithItemDatabasesSubItem1;

  /// No description provided for @workWithItemDatabasesSubItem2.
  ///
  /// In en, this message translates to:
  /// **'Some experience with Floor'**
  String get workWithItemDatabasesSubItem2;

  /// No description provided for @workWithItemAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get workWithItemAuthentication;

  /// No description provided for @workWithItemAuthenticationSubItem.
  ///
  /// In en, this message translates to:
  /// **'Integrated Firebase OAuth and Google Sign-In into own app'**
  String get workWithItemAuthenticationSubItem;

  /// No description provided for @workWithItemLocalization.
  ///
  /// In en, this message translates to:
  /// **'Localization'**
  String get workWithItemLocalization;

  /// No description provided for @workWithItemLocalizationSubItem.
  ///
  /// In en, this message translates to:
  /// **'Used intl in personal projects'**
  String get workWithItemLocalizationSubItem;

  /// No description provided for @workWithItemDi.
  ///
  /// In en, this message translates to:
  /// **'Dependency Injection'**
  String get workWithItemDi;

  /// No description provided for @workWithItemDiSubItem.
  ///
  /// In en, this message translates to:
  /// **'Used getIt in personal projects'**
  String get workWithItemDiSubItem;

  /// No description provided for @workWithItemRest.
  ///
  /// In en, this message translates to:
  /// **'REST'**
  String get workWithItemRest;

  /// No description provided for @workWithItemRestSubItem.
  ///
  /// In en, this message translates to:
  /// **'Worked with Dio library for HTTP requests'**
  String get workWithItemRestSubItem;

  /// No description provided for @educationInfo.
  ///
  /// In en, this message translates to:
  /// **'Studying at FEFU as a fourth-year student in Applied Mathematics and Informatics.'**
  String get educationInfo;

  /// No description provided for @softSkillsCommunicative.
  ///
  /// In en, this message translates to:
  /// **'I\'m very open and communicative, easily finding common ground with anyone.'**
  String get softSkillsCommunicative;

  /// No description provided for @softSkillsPatient.
  ///
  /// In en, this message translates to:
  /// **'I\'m patient; I don\'t mind explaining a topic multiple times until it\'s understood =)'**
  String get softSkillsPatient;

  /// No description provided for @softSkillsSelfOrganized.
  ///
  /// In en, this message translates to:
  /// **'Capable of self-organization and organizing others.'**
  String get softSkillsSelfOrganized;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
