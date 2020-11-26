import 'package:angular/angular.dart';
import 'package:angular_app/src/public/hero.dart';
import 'package:angular_app/src/services/hero_serive.dart';
import 'package:angular_router/angular_router.dart';

import '../../app_routing.dart';
import '../../routes.dart';

@Component(
    selector: 'my-dashboard',
    styleUrls: ['dashboard_component.css'],
    templateUrl: 'dashboard_component.html',
    directives: [
      coreDirectives,
      routerDirectives,
    ],
    exports: [RoutePaths, Routes])
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    heroes = await _heroService.getAll();
    heroes = heroes.skip(1).take(4).toList();
  }

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
}
