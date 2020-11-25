import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_app/src/components/hero/hero_component.dart';
import 'package:angular_app/src/public/hero.dart';
import 'package:angular_app/src/public/mock_hero.dart';
import 'package:angular_app/src/services/hero_serive.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],

  directives: [
    coreDirectives,
    formDirectives,
    HeroComponent,
  ],

  providers: [ClassProvider(HeroService)]
)

class HeroListComponent {
  final title = 'Tour of Heroes';
  final HeroService _heroService;
  HeroListComponent(this._heroService);

  List<Hero> heroes = HEROES;

  Hero selected;
  void onSelect(Hero hero) => selected = hero;

  // Use callback function
  // void _getHeroes() {
  //   _heroService.getAll().then((heroes) => this.heroes = heroes);
  // }

  // Use await
  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  Future<void> _getHeroesSlowly() async {
    heroes = await _heroService.getAllSlowly();
  }

  void ngOnInit() => _getHeroes();
}
