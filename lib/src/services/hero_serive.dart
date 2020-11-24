import 'dart:async';
import 'package:angular_app/src/public/hero.dart';
import 'package:angular_app/src/public/mock_hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async => HEROES;

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}
