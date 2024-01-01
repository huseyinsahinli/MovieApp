import 'package:auto_route/auto_route.dart';
import 'package:movie_time/pages/home_page/home_page.dart';
import 'package:movie_time/pages/main_page/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
      ];
}
