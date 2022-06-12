import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/core/app/app_const.dart';
import '../../domain/meme/meme_response.dart';

part 'detail_store.g.dart';

class DetailStore = _DetailStore with _$DetailStore;

abstract class _DetailStore with Store {
  ScreenshotController controller = ScreenshotController();

  @action
  void shareToWhatsapp(Meme item) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    int fileName = DateTime.now().microsecondsSinceEpoch;

    final path = await controller.captureAndSave(
      directory,
      fileName: '$fileName.png',
    );

    if (path?.isNotEmpty == true) {
      Share.shareFiles([path!], text: AppConst.appName);
    }
  }

  @action
  void downloadPDF(pw.Document layout) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    int fileName = DateTime.now().microsecondsSinceEpoch;

    final file = File('$directory$fileName.pdf');
    await file.writeAsBytes(await layout.save());
    OpenFile.open(file.path);
  }
}
