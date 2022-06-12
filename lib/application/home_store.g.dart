// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  Computed<List<Meme>>? _$memesComputed;

  @override
  List<Meme> get memes => (_$memesComputed ??=
          Computed<List<Meme>>(() => super.memes, name: '_HomeStore.memes'))
      .value;
  Computed<NetworkStatus>? _$fetchMemeStatusComputed;

  @override
  NetworkStatus get fetchMemeStatus => (_$fetchMemeStatusComputed ??=
          Computed<NetworkStatus>(() => super.fetchMemeStatus,
              name: '_HomeStore.fetchMemeStatus'))
      .value;

  late final _$_fetchMemeStatusAtom =
      Atom(name: '_HomeStore._fetchMemeStatus', context: context);

  @override
  ObservableFuture<dynamic>? get _fetchMemeStatus {
    _$_fetchMemeStatusAtom.reportRead();
    return super._fetchMemeStatus;
  }

  @override
  set _fetchMemeStatus(ObservableFuture<dynamic>? value) {
    _$_fetchMemeStatusAtom.reportWrite(value, super._fetchMemeStatus, () {
      super._fetchMemeStatus = value;
    });
  }

  late final _$memeResponseAtom =
      Atom(name: '_HomeStore.memeResponse', context: context);

  @override
  MemeResponse? get memeResponse {
    _$memeResponseAtom.reportRead();
    return super.memeResponse;
  }

  @override
  set memeResponse(MemeResponse? value) {
    _$memeResponseAtom.reportWrite(value, super.memeResponse, () {
      super.memeResponse = value;
    });
  }

  late final _$fetchAllAddressesAsyncAction =
      AsyncAction('_HomeStore.fetchAllAddresses', context: context);

  @override
  Future<void> fetchAllAddresses() {
    return _$fetchAllAddressesAsyncAction.run(() => super.fetchAllAddresses());
  }

  @override
  String toString() {
    return '''
memeResponse: ${memeResponse},
memes: ${memes},
fetchMemeStatus: ${fetchMemeStatus}
    ''';
  }
}
