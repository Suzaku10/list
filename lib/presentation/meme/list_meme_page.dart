import 'package:credibook_challange/application/home_store.dart';
import 'package:credibook_challange/domain/core/app/app_const.dart';
import 'package:credibook_challange/domain/core/inject/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ListMemePage extends StatefulWidget {
  const ListMemePage({Key? key}) : super(key: key);

  @override
  State<ListMemePage> createState() => _ListMemePageState();
}

class _ListMemePageState extends State<ListMemePage> {
  final HomeStore _store = GetIt.I.get<HomeStore>()..fetchAllAddresses();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConst.appName),
        ),
        body: Center(
          child: Observer(
            builder: (context) {
              return Text('${_store.isSuccess}');
            },
          ),
        ),
      ),
    );
  }
}
