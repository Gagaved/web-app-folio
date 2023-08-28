import 'package:flutter/material.dart';
import 'package:webappfolio/presentation/pages/blog/blog_page.dart';
import 'package:webappfolio/presentation/pages/games/games_page.dart';
import 'package:webappfolio/presentation/pages/home/view/home_page.dart';
import 'package:webappfolio/presentation/pages/not_found/not_found_page.dart';
import 'package:webappfolio/presentation/pages/private_policy/view/private_policy_page.dart';
import 'package:webappfolio/presentation/pages/resume/resume_page.dart';
import 'package:webappfolio/presentation/pages/terms_of_use/view/terms_of_use_page.dart';

extension RouteSettingsExtension on RouteSettings {
  RouteSettings copyWith({
    String? name,
    Object? arguments,
  }) {
    return RouteSettings(
      name: name ?? this.name,
      arguments: arguments ?? this.arguments,
    );
  }
}


class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
      builder: builder,
      maintainState: maintainState,
      settings: settings,
      fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return NoAnimationMaterialPageRoute(
            builder: (_) => const HomePage(),settings: settings.copyWith(name: '/home'));
      case '/home':
        return NoAnimationMaterialPageRoute(
            builder: (_) => const HomePage(),settings: settings);
      case '/inmind/private_policy':
        return MaterialPageRoute(
            builder: (_) => const PrivatePolicyPage(), settings: settings);
      case '/inmind/terms_of_use':
        return MaterialPageRoute(
            builder: (_) => const TermsOfUsePage(), settings: settings);
      case '/resume':
        return NoAnimationMaterialPageRoute(
            maintainState: true,
            builder: (_) => const ResumePage(), settings: settings);
      case '/games':
        return NoAnimationMaterialPageRoute(
            maintainState: true,
            builder: (_) => const GamesPage(), settings: settings);
      case '/blog':
        return NoAnimationMaterialPageRoute(
            maintainState: true,
            builder: (_) => const BlogPage(), settings: settings);
      default:
        return NoAnimationMaterialPageRoute(
            builder: (_) => const NotFoundPage(), settings: settings);
    }
  }
}
