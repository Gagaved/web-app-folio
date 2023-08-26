import 'package:flutter/material.dart';
import 'package:webappfolio/presentation/pages/home/view/home_page.dart';
import 'package:webappfolio/presentation/pages/not_found/not_found_page.dart';
import 'package:webappfolio/presentation/pages/private_policy/view/private_policy_page.dart';
import 'package:webappfolio/presentation/pages/terms_of_use/view/terms_of_use_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage(),settings: settings);
      case '/inmind/private_policy':
        return MaterialPageRoute(
            builder: (_) => const PrivatePolicyPage(), settings: settings);
      case '/inmind/terms_of_use':
        return MaterialPageRoute(
            builder: (_) => const TermsOfUsePage(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const NotFoundPage(), settings: settings);
    }
  }
}
