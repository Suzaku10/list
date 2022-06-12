import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme_response.freezed.dart';
part 'meme_response.g.dart';

@freezed
class MemeResponse with _$MemeResponse {
  const factory MemeResponse({
    bool? success,
    Data? data,
  }) = _MemeResponse;

  factory MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$MemeResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default([]) List<Meme?> memes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Meme with _$Meme {
  const factory Meme({
    String? id,
    String? name,
    String? url,
    int? width,
    int? height,
    int? boxCount,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
}
