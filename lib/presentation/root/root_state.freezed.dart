// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RootState _$RootStateFromJson(Map<String, dynamic> json) {
  return _RootState.fromJson(json);
}

/// @nodoc
mixin _$RootState {
  PageSelectType get curPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call({PageSelectType curPage});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  final RootState _value;
  // ignore: unused_field
  final $Res Function(RootState) _then;

  @override
  $Res call({
    Object? curPage = freezed,
  }) {
    return _then(_value.copyWith(
      curPage: curPage == freezed
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as PageSelectType,
    ));
  }
}

/// @nodoc
abstract class _$$_RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$$_RootStateCopyWith(
          _$_RootState value, $Res Function(_$_RootState) then) =
      __$$_RootStateCopyWithImpl<$Res>;
  @override
  $Res call({PageSelectType curPage});
}

/// @nodoc
class __$$_RootStateCopyWithImpl<$Res> extends _$RootStateCopyWithImpl<$Res>
    implements _$$_RootStateCopyWith<$Res> {
  __$$_RootStateCopyWithImpl(
      _$_RootState _value, $Res Function(_$_RootState) _then)
      : super(_value, (v) => _then(v as _$_RootState));

  @override
  _$_RootState get _value => super._value as _$_RootState;

  @override
  $Res call({
    Object? curPage = freezed,
  }) {
    return _then(_$_RootState(
      curPage: curPage == freezed
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as PageSelectType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RootState implements _RootState {
  _$_RootState({this.curPage = PageSelectType.home});

  factory _$_RootState.fromJson(Map<String, dynamic> json) =>
      _$$_RootStateFromJson(json);

  @override
  @JsonKey()
  final PageSelectType curPage;

  @override
  String toString() {
    return 'RootState(curPage: $curPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootState &&
            const DeepCollectionEquality().equals(other.curPage, curPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(curPage));

  @JsonKey(ignore: true)
  @override
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      __$$_RootStateCopyWithImpl<_$_RootState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RootStateToJson(this);
  }
}

abstract class _RootState implements RootState {
  factory _RootState({final PageSelectType curPage}) = _$_RootState;

  factory _RootState.fromJson(Map<String, dynamic> json) =
      _$_RootState.fromJson;

  @override
  PageSelectType get curPage;
  @override
  @JsonKey(ignore: true)
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}
