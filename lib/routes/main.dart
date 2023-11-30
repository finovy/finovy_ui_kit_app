import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import './01_basic_comp.dart';
import './02_form_comp.dart';
import './03_feedback_comp.dart';
import './05_navigation_comp.dart';
import './06_business_comp.dart';
import './_modals.dart';
import '../main.dart' show MyHomePage;

export './_modals.dart';

class CompRouter {
  CompRouter._();

  static List<CompRoute> routes = <CompRoute>[];
  static Map<String, CompRoute> pathMap = <String, CompRoute>{};

  static void init() {
    routes = <CompRoute>[
      CompRoute.group('BasicComponents', routes: basicCompRoutes),
      CompRoute.group('FeedbackComponents', routes: feedbackCompRoutes),
      CompRoute.group('FormComponents', routes: formCompRoutes),
      CompRoute.group('NavigationComponents', routes: navigationCompRoutes),
      CompRoute.group('BusinessComponents', routes: businessCompRoutes),
    ];
    for (int i = 0; i < routes.length; i++) {
      final CompRoute group = routes[i];
      for (int j = 0; j < group.routes!.length; j++) {
        final CompRoute item = group.routes![j];
        pathMap[item.path!] = item;
      }
    }
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final CompRoute? route = pathMap[settings.name];
    if (route == null) {
      return CompRouter.fallbackRoute;
    }
    if (route.future == null) {
      return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => route.component!(context));
    }
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => FutureBuilder<void>(
        future: route.future!(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return route.component!(context);
          }
          final Size s = MediaQuery.of(context).size;
          return Container(
            color: Colors.white,
            width: s.width,
            height: s.height,
            alignment: Alignment.center,
            child: const SizedBox(
              width: 100.0,
              height: 100.0,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
      settings: settings,
      // settings.copyWith(arguments: <String, String>{'title': route.name}),
    );
  }

  static MaterialPageRoute<dynamic> fallbackRoute = MaterialPageRoute<dynamic>(
    builder: (BuildContext context) => const MyHomePage(),
  );
}
