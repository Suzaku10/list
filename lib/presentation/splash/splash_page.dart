import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:credibook_challange/domain/core/app/app_router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../domain/core/app/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _goToLoginPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const SafeArea(
        child: Scaffold(
          body: Center(
            child: Image(
              image: Svg(AppAsset.logo),
            ),
          ),
        ),
      ),
    );
  }

  void _goToLoginPage() {
    Timer(const Duration(seconds: 2), (() {
      context.replaceRoute(
        const ListMemeRoute(),
      );
    }));
  }
}
