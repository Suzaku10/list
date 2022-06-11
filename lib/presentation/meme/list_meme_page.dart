import 'package:credibook_challange/domain/core/app/app_const.dart';
import 'package:flutter/material.dart';

class ListMemePage extends StatefulWidget {
  const ListMemePage({Key? key}) : super(key: key);

  @override
  State<ListMemePage> createState() => _ListMemePageState();
}

class _ListMemePageState extends State<ListMemePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConst.appName),
        ),
        body: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
