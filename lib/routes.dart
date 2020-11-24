import 'package:angular_router/angular_router.dart';

import 'app_routing.dart';
import 'package:angular_router/angular_router.dart';
import 'hero_list_component.template.dart' as hero_list_template;

export 'app_routing.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
  ];
}
