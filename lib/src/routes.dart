import 'app_routing.dart';
import 'package:angular_router/angular_router.dart';
import 'screens/home/hero_list_component.template.dart' as hero_list_template;

import 'screens/dashboard/dashboard_component.template.dart'
    as dashboard_template;

import 'components/hero/hero_component.template.dart'
    as hero_detail_template;

export 'app_routing.dart';

class Routes {
  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_detail_template.HeroComponentNgFactory,
  );

  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    hero,
    heroes,
    dashboard,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}
