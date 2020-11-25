import 'package:angular/angular.dart';
import 'package:angular_app/src/public/hero.dart';
import 'package:angular_app/src/services/hero_serive.dart';

@Component(
  selector: 'my-dashboard',
  styleUrls: ['dashboard_component.css'],
  templateUrl: 'dashboard_component.html',
  directives: [coreDirectives],
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    heroes = await _heroService.getAll();
    heroes = heroes.skip(1).take(4).toList();
  }
}
