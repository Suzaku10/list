import 'package:credibook_challange/application/detail/detail_store.dart';
import 'package:credibook_challange/domain/meme/meme_response.dart';
import 'package:credibook_challange/utils/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:printing/printing.dart';
import 'package:screenshot/screenshot.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../domain/core/app/app_style.dart';
import '../component/app_button.dart';

class DetailMemePage extends StatefulWidget {
  final Meme meme;

  const DetailMemePage({
    Key? key,
    required this.meme,
  }) : super(key: key);

  @override
  State<DetailMemePage> createState() => _DetailMemePageState();
}

class _DetailMemePageState extends State<DetailMemePage> {
  final DetailStore _store = GetIt.I.get<DetailStore>();
  late Meme item;

  @override
  initState() {
    item = widget.meme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(I10n.current.detail_page),
        ),
        body: Column(
          children: [
            Screenshot(
              controller: _store.controller,
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
                          child: Image.network(
                            item.url!,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                      Text(item.name ?? '', style: AppStyle.normal16),
                      Text(
                        'Real Size : ${item.height} x ${item.width}',
                        style: AppStyle.italic12,
                      )
                    ],
                  ),
                ),
              ),
            ),
            AppButton.normal(
              I10n.current.share_to_whatsapp,
              onPressed: () => _store.shareToWhatsapp(item),
            ),
            AppButton.normal(
              I10n.current.download_as_pdf,
              onPressed: () async => _store.downloadPDF(await _pdfWidget(item)),
            ),
          ],
        ),
      ),
    );
  }

  Future<pw.Document> _pdfWidget(Meme item) async {
    final pdf = pw.Document();
    final netImage = await networkImage(item.url!);

    return pdf
      ..addPage(
        pw.Page(
          build: (pw.Context context) => pw.Center(
            child: pw.Column(children: [
              pw.Image(netImage),
              pw.Text(item.name!),
            ]),
          ),
        ),
      );
  }
}
