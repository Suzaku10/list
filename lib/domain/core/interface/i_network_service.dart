abstract class INetworkService {
  Future<dynamic> getHttp({
    required String path,
  });
}
