import 'package:credibook_challange/domain/core/app/app_enum.dart';
import 'package:credibook_challange/infrastructure/remote/api_request.dart';
import 'package:mobx/mobx.dart';

import '../domain/meme/meme_response.dart';
import '../infrastructure/remote/i_api_request.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final IAPIRequest _request = APIRequest();

  @observable
  ObservableFuture? _fetchMemeStatus;

  @observable
  MemeResponse? memeResponse;

  @computed
  List<Meme> get memes {
    if (memeResponse?.data?.memes.isNotEmpty == true) {
      return List<Meme>.from(memeResponse?.data?.memes ?? []);
    } else {
      return [];
    }
  }

  @computed
  NetworkStatus get fetchMemeStatus {
    if (_fetchMemeStatus?.status == FutureStatus.rejected) {
      return NetworkStatus.reject;
    }
    return _fetchMemeStatus?.status == FutureStatus.pending
        ? NetworkStatus.loading
        : NetworkStatus.success;
  }

  @action
  Future<void> fetchAllAddresses() async {
    try {
      _fetchMemeStatus = ObservableFuture(_request.fetchMeme());
      memeResponse = await _fetchMemeStatus;
    } catch (_) {}
  }
}
