import 'package:credibook_challange/application/detail/detail_store.dart';
import 'package:credibook_challange/application/home_store.dart';
import 'package:get_it/get_it.dart';

final getItRegistry = GetItRegistry();

class GetItRegistry {
  doRegister() {
    GetIt.I.registerSingleton<HomeStore>(HomeStore());
    GetIt.I.registerSingleton<DetailStore>(DetailStore());
  }
}
