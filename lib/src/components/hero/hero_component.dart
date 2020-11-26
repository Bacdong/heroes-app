import 'package:angular/angular.dart';
import 'package:angular_app/src/public/hero.dart';
import 'package:angular_app/src/services/hero_serive.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import '../../app_routing.dart';

@Component(
  selector: 'my-hero',
  styleUrls: ['hero_component.css'],
  templateUrl: 'hero_component.html',
  directives: [
    coreDirectives, 
    formDirectives,
    routerDirectives,
  ],
)
class HeroComponent implements OnActivate {
  Hero hero;

  final HeroService _heroService;
  final Location _location;

  HeroComponent(this._heroService, this._location);

  @override
  void onActivate(_, RouterState current) async {
    final id = getId(current.parameters);
    if (id != null) hero = await (_heroService.get(id));
  }

  void goBack() => _location.back();
}
