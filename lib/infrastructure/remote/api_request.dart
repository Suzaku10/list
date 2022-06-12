import 'package:credibook_challange/domain/core/app/app_const.dart';
import 'package:credibook_challange/domain/core/interface/i_network_service.dart';
import 'package:credibook_challange/domain/core/interface/network_service.dart';
import 'package:credibook_challange/infrastructure/remote/i_api_request.dart';

class APIRequest implements IAPIRequest {
  final INetworkService _service = NetworkService();

  @override
  Future<bool> fetchMeme() async {
    try {
      final _result = await _service.getHttp(path: AppConst.fetchMeme);
      print('print => $_result');
      return true;
    } catch (_) {
      return false;
    }
  }
}
