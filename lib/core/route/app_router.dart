import 'package:doc_doc_app/core/route/routes.dart';
import 'package:doc_doc_app/features/login/presentation/login_view.dart';
import 'package:doc_doc_app/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
    }
  }
}
