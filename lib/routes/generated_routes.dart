import 'package:flutter/material.dart';
import 'package:kadu_ngo/business_logic/landing_page_bloc/landing_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadu_ngo/screens/landingpage/landingpage.dart';
import 'package:kadu_ngo/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final LandingPageBloc landingPageBloc = LandingPageBloc();
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<LandingPageBloc>.value(
                value: landingPageBloc, child: SplashScreen()));

      case 'splash':
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
