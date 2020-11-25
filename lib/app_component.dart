import 'package:angular/di.dart';
import 'package:angular_app/src/routes.dart';
import 'package:angular_app/src/screens/home/hero_list_component.dart';
import 'package:angular_app/src/services/hero_serive.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',

  directives: [
    HeroListComponent, 
    routerDirectives
  ],
  
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes]
)

class AppComponent {
  var name = 'Angular Dart';
  final title = 'TOUR OF HEROES';
}
