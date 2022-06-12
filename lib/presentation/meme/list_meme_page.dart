import 'package:auto_route/auto_route.dart';
import 'package:credibook_challange/application/home_store.dart';
import 'package:credibook_challange/domain/core/app/app_assets.dart';
import 'package:credibook_challange/domain/core/app/app_const.dart';
import 'package:credibook_challange/domain/core/app/app_router/app_router.gr.dart';
import 'package:credibook_challange/domain/core/app/app_style.dart';
import 'package:credibook_challange/utils/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../domain/core/app/app_enum.dart';
import '../../domain/meme/meme_response.dart';

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
        body: Observer(
          builder: (context) {
            if (_store.fetchMemeStatus == NetworkStatus.loading) {
              EasyLoading.show();
            } else if (_store.fetchMemeStatus == NetworkStatus.success) {
              EasyLoading.dismiss();
            }

            switch (_store.fetchMemeStatus) {
              case NetworkStatus.success:
                if (_store.memes.isEmpty) {
                  return const Center(child: Text('No Data'));
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index) => _memeItem(
                      _store.memes[index],
                    ),
                    itemCount: _store.memes.length,
                  );
                }
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _memeItem(Meme item) {
    return GestureDetector(
      onTap: () => context.router.push(DetailMemeRoute(meme: item)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.url?.isNotEmpty == true)
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                  ),
                  child: FadeInImage(
                    image: NetworkImage(
                      item.url!,
                    ),
                    placeholder: const AssetImage(AppAsset.logoPng),
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              Text(item.name ?? '', style: AppStyle.normal16),
              Text(
                '${I10n.current.real_size} : ${item.height} x ${item.width}',
                style: AppStyle.italic12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
