import 'app_routing.dart';
import 'package:angular_router/angular_router.dart';
import 'screens/home/hero_list_component.template.dart'
  as hero_list_template;

import 'screens/dashboard/dashboard_component.template.dart'
  as dashboard_template;

export 'app_routing.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
    dashboard,

    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}
