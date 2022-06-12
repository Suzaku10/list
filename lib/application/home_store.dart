import 'package:credibook_challange/infrastructure/remote/api_request.dart';
import 'package:mobx/mobx.dart';

import '../infrastructure/remote/i_api_request.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final IAPIRequest _request = APIRequest();

  @observable
  bool isSuccess = false;

  // @computed
  // NetworkState get addressesState {
  //   if (_addressesFuture?.status == FutureStatus.rejected) {
  //     return NetworkState.initial;
  //   }
  //   return _addressesFuture?.status == FutureStatus.pending
  //       ? NetworkState.loading
  //       : NetworkState.loaded;
  // }

  @action
  Future<void> fetchAllAddresses() async {
    try {
      await _request.fetchMeme();
      isSuccess = true;
    } catch (_) {
      isSuccess = false;
    }

    // filteredAddress.clear();
    // _addressesFuture =
    //     ObservableFuture(_addressImplRepository.fetchAllAddress());
    // var result = await _addressesFuture;
    //
    // addresses = ObservableList.of([...result!]);
  }
}
