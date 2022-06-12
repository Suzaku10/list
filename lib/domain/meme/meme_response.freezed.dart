// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meme_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemeResponse _$MemeResponseFromJson(Map<String, dynamic> json) {
  return _MemeResponse.fromJson(json);
}

/// @nodoc
mixin _$MemeResponse {
  bool? get success => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeResponseCopyWith<MemeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeResponseCopyWith<$Res> {
  factory $MemeResponseCopyWith(
          MemeResponse value, $Res Function(MemeResponse) then) =
      _$MemeResponseCopyWithImpl<$Res>;
  $Res call({bool? success, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MemeResponseCopyWithImpl<$Res> implements $MemeResponseCopyWith<$Res> {
  _$MemeResponseCopyWithImpl(this._value, this._then);

  final MemeResponse _value;
  // ignore: unused_field
  final $Res Function(MemeResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_MemeResponseCopyWith<$Res>
    implements $MemeResponseCopyWith<$Res> {
  factory _$$_MemeResponseCopyWith(
          _$_MemeResponse value, $Res Function(_$_MemeResponse) then) =
      __$$_MemeResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_MemeResponseCopyWithImpl<$Res>
    extends _$MemeResponseCopyWithImpl<$Res>
    implements _$$_MemeResponseCopyWith<$Res> {
  __$$_MemeResponseCopyWithImpl(
      _$_MemeResponse _value, $Res Function(_$_MemeResponse) _then)
      : super(_value, (v) => _then(v as _$_MemeResponse));

  @override
  _$_MemeResponse get _value => super._value as _$_MemeResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MemeResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemeResponse implements _MemeResponse {
  const _$_MemeResponse({this.success, this.data});

  factory _$_MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MemeResponseFromJson(json);

  @override
  final bool? success;
  @override
  final Data? data;

  @override
  String toString() {
    return 'MemeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemeResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_MemeResponseCopyWith<_$_MemeResponse> get copyWith =>
      __$$_MemeResponseCopyWithImpl<_$_MemeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeResponseToJson(this);
  }
}

abstract class _MemeResponse implements MemeResponse {
  const factory _MemeResponse({final bool? success, final Data? data}) =
      _$_MemeResponse;

  factory _MemeResponse.fromJson(Map<String, dynamic> json) =
      _$_MemeResponse.fromJson;

  @override
  bool? get success => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MemeResponseCopyWith<_$_MemeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Meme?> get memes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Meme?> memes});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? memes = freezed,
  }) {
    return _then(_value.copyWith(
      memes: memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme?>,
    ));
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Meme?> memes});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? memes = freezed,
  }) {
    return _then(_$_Data(
      memes: memes == freezed
          ? _value._memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({final List<Meme?> memes = const []}) : _memes = memes;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Meme?> _memes;
  @override
  @JsonKey()
  List<Meme?> get memes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memes);
  }

  @override
  String toString() {
    return 'Data(memes: $memes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._memes, _memes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memes));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<Meme?> memes}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Meme?> get memes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return _Meme.fromJson(json);
}

/// @nodoc
mixin _$Meme {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get boxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      int? boxCount});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res> implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  final Meme _value;
  // ignore: unused_field
  final $Res Function(Meme) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: boxCount == freezed
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$_MemeCopyWith(_$_Meme value, $Res Function(_$_Meme) then) =
      __$$_MemeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      int? boxCount});
}

/// @nodoc
class __$$_MemeCopyWithImpl<$Res> extends _$MemeCopyWithImpl<$Res>
    implements _$$_MemeCopyWith<$Res> {
  __$$_MemeCopyWithImpl(_$_Meme _value, $Res Function(_$_Meme) _then)
      : super(_value, (v) => _then(v as _$_Meme));

  @override
  _$_Meme get _value => super._value as _$_Meme;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
  }) {
    return _then(_$_Meme(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: boxCount == freezed
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meme implements _Meme {
  const _$_Meme(
      {this.id, this.name, this.url, this.width, this.height, this.boxCount});

  factory _$_Meme.fromJson(Map<String, dynamic> json) => _$$_MemeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? boxCount;

  @override
  String toString() {
    return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meme &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.boxCount, boxCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(boxCount));

  @JsonKey(ignore: true)
  @override
  _$$_MemeCopyWith<_$_Meme> get copyWith =>
      __$$_MemeCopyWithImpl<_$_Meme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeToJson(this);
  }
}

abstract class _Meme implements Meme {
  const factory _Meme(
      {final String? id,
      final String? name,
      final String? url,
      final int? width,
      final int? height,
      final int? boxCount}) = _$_Meme;

  factory _Meme.fromJson(Map<String, dynamic> json) = _$_Meme.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  int? get width => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  int? get boxCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MemeCopyWith<_$_Meme> get copyWith => throw _privateConstructorUsedError;
}
