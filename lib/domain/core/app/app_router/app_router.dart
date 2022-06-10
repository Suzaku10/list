import 'package:auto_route/auto_route.dart';
import 'package:credibook_challange/presentation/meme/detail_meme_page.dart';
import 'package:credibook_challange/presentation/meme/list_meme_page.dart';
import 'package:credibook_challange/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: ListMemePage),
    AutoRoute(page: DetailMemePage),
  ],
)
class $AppRouter {}
