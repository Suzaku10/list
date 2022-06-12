import 'package:credibook_challange/domain/meme/meme_response.dart';

abstract class IAPIRequest {
  Future<MemeResponse?> fetchMeme();
}
