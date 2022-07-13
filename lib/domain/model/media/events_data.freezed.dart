// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventsData _$EventsDataFromJson(Map<String, dynamic> json) {
  return _EventsData.fromJson(json);
}

/// @nodoc
mixin _$EventsData {
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get articleUrl => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<String> get logos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsDataCopyWith<EventsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsDataCopyWith<$Res> {
  factory $EventsDataCopyWith(
          EventsData value, $Res Function(EventsData) then) =
      _$EventsDataCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String imageUrl,
      String articleUrl,
      String date,
      List<String> logos});
}

/// @nodoc
class _$EventsDataCopyWithImpl<$Res> implements $EventsDataCopyWith<$Res> {
  _$EventsDataCopyWithImpl(this._value, this._then);

  final EventsData _value;
  // ignore: unused_field
  final $Res Function(EventsData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? articleUrl = freezed,
    Object? date = freezed,
    Object? logos = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      articleUrl: articleUrl == freezed
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      logos: logos == freezed
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_EventsDataCopyWith<$Res>
    implements $EventsDataCopyWith<$Res> {
  factory _$$_EventsDataCopyWith(
          _$_EventsData value, $Res Function(_$_EventsData) then) =
      __$$_EventsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String imageUrl,
      String articleUrl,
      String date,
      List<String> logos});
}

/// @nodoc
class __$$_EventsDataCopyWithImpl<$Res> extends _$EventsDataCopyWithImpl<$Res>
    implements _$$_EventsDataCopyWith<$Res> {
  __$$_EventsDataCopyWithImpl(
      _$_EventsData _value, $Res Function(_$_EventsData) _then)
      : super(_value, (v) => _then(v as _$_EventsData));

  @override
  _$_EventsData get _value => super._value as _$_EventsData;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? articleUrl = freezed,
    Object? date = freezed,
    Object? logos = freezed,
  }) {
    return _then(_$_EventsData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      articleUrl: articleUrl == freezed
          ? _value.articleUrl
          : articleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      logos: logos == freezed
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventsData implements _EventsData {
  _$_EventsData(
      {required this.title,
      required this.imageUrl,
      required this.articleUrl,
      required this.date,
      required final List<String> logos})
      : _logos = logos;

  factory _$_EventsData.fromJson(Map<String, dynamic> json) =>
      _$$_EventsDataFromJson(json);

  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String articleUrl;
  @override
  final String date;
  final List<String> _logos;
  @override
  List<String> get logos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logos);
  }

  @override
  String toString() {
    return 'EventsData(title: $title, imageUrl: $imageUrl, articleUrl: $articleUrl, date: $date, logos: $logos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.articleUrl, articleUrl) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other._logos, _logos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(articleUrl),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(_logos));

  @JsonKey(ignore: true)
  @override
  _$$_EventsDataCopyWith<_$_EventsData> get copyWith =>
      __$$_EventsDataCopyWithImpl<_$_EventsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventsDataToJson(this);
  }
}

abstract class _EventsData implements EventsData {
  factory _EventsData(
      {required final String title,
      required final String imageUrl,
      required final String articleUrl,
      required final String date,
      required final List<String> logos}) = _$_EventsData;

  factory _EventsData.fromJson(Map<String, dynamic> json) =
      _$_EventsData.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get articleUrl;
  @override
  String get date;
  @override
  List<String> get logos;
  @override
  @JsonKey(ignore: true)
  _$$_EventsDataCopyWith<_$_EventsData> get copyWith =>
      throw _privateConstructorUsedError;
}
