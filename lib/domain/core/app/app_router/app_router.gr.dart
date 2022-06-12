// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../../presentation/meme/detail_meme_page.dart' as _i3;
import '../../../../presentation/meme/list_meme_page.dart' as _i2;
import '../../../../presentation/splash/splash_page.dart' as _i1;
import '../../../meme/meme_response.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    ListMemeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ListMemePage());
    },
    DetailMemeRoute.name: (routeData) {
      final args = routeData.argsAs<DetailMemeRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DetailMemePage(key: args.key, meme: args.meme));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(ListMemeRoute.name, path: '/list-meme-page'),
        _i4.RouteConfig(DetailMemeRoute.name, path: '/detail-meme-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ListMemePage]
class ListMemeRoute extends _i4.PageRouteInfo<void> {
  const ListMemeRoute() : super(ListMemeRoute.name, path: '/list-meme-page');

  static const String name = 'ListMemeRoute';
}

/// generated route for
/// [_i3.DetailMemePage]
class DetailMemeRoute extends _i4.PageRouteInfo<DetailMemeRouteArgs> {
  DetailMemeRoute({_i5.Key? key, required _i6.Meme meme})
      : super(DetailMemeRoute.name,
            path: '/detail-meme-page',
            args: DetailMemeRouteArgs(key: key, meme: meme));

  static const String name = 'DetailMemeRoute';
}

class DetailMemeRouteArgs {
  const DetailMemeRouteArgs({this.key, required this.meme});

  final _i5.Key? key;

  final _i6.Meme meme;

  @override
  String toString() {
    return 'DetailMemeRouteArgs{key: $key, meme: $meme}';
  }
}
