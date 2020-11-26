import 'package:angular_router/angular_router.dart';

const idParam = 'id';

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);
}

class RoutePaths {
  static final heroes = RoutePath(path: 'heroes');
  static final dashboard = RoutePath(path: 'dashboard');
  static final hero = RoutePath(path: '${heroes.path}/:$idParam');
}

