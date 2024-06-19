import 'package:portfolio/routes/router_name.dart';
import 'package:portfolio/view/about_us/view/about_us_view.dart';
import 'package:portfolio/view/home/home.dart';
import 'package:portfolio/view/projects/project_view.dart';
import 'package:portfolio/view/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(initialLocation: AppRoute.splash, routes: [
  GoRoute(
    path: AppRoute.splash,
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: AppRoute.home,
    builder: (context, state) => const HomePage(),
  ),
  // GoRoute(
  //   path: AppRoute.projects,
  //   builder: (context, state) => ProjectsView(),
  // ),
  // GoRoute(
  //   path: AppRoute.aboutUs,
  //   builder: (context, state) => const AboutUsView(),
  // ),
  // GoRoute(
  //   path: '/',
  //   builder: (context, state) => SplashView(),
  // ),
]);
