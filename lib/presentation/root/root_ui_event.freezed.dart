// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() menuTab,
    required TResult Function(PageSelectType type) selectScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuTab value) menuTab,
    required TResult Function(SelectScreen value) selectScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootUiEventCopyWith<$Res> {
  factory $RootUiEventCopyWith(
          RootUiEvent value, $Res Function(RootUiEvent) then) =
      _$RootUiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RootUiEventCopyWithImpl<$Res> implements $RootUiEventCopyWith<$Res> {
  _$RootUiEventCopyWithImpl(this._value, this._then);

  final RootUiEvent _value;
  // ignore: unused_field
  final $Res Function(RootUiEvent) _then;
}

/// @nodoc
abstract class _$$MenuTabCopyWith<$Res> {
  factory _$$MenuTabCopyWith(_$MenuTab value, $Res Function(_$MenuTab) then) =
      __$$MenuTabCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MenuTabCopyWithImpl<$Res> extends _$RootUiEventCopyWithImpl<$Res>
    implements _$$MenuTabCopyWith<$Res> {
  __$$MenuTabCopyWithImpl(_$MenuTab _value, $Res Function(_$MenuTab) _then)
      : super(_value, (v) => _then(v as _$MenuTab));

  @override
  _$MenuTab get _value => super._value as _$MenuTab;
}

/// @nodoc

class _$MenuTab implements MenuTab {
  const _$MenuTab();

  @override
  String toString() {
    return 'RootUiEvent.menuTab()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MenuTab);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() menuTab,
    required TResult Function(PageSelectType type) selectScreen,
  }) {
    return menuTab();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
  }) {
    return menuTab?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
    required TResult orElse(),
  }) {
    if (menuTab != null) {
      return menuTab();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuTab value) menuTab,
    required TResult Function(SelectScreen value) selectScreen,
  }) {
    return menuTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
  }) {
    return menuTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
    required TResult orElse(),
  }) {
    if (menuTab != null) {
      return menuTab(this);
    }
    return orElse();
  }
}

abstract class MenuTab implements RootUiEvent {
  const factory MenuTab() = _$MenuTab;
}

/// @nodoc
abstract class _$$SelectScreenCopyWith<$Res> {
  factory _$$SelectScreenCopyWith(
          _$SelectScreen value, $Res Function(_$SelectScreen) then) =
      __$$SelectScreenCopyWithImpl<$Res>;
  $Res call({PageSelectType type});
}

/// @nodoc
class __$$SelectScreenCopyWithImpl<$Res> extends _$RootUiEventCopyWithImpl<$Res>
    implements _$$SelectScreenCopyWith<$Res> {
  __$$SelectScreenCopyWithImpl(
      _$SelectScreen _value, $Res Function(_$SelectScreen) _then)
      : super(_value, (v) => _then(v as _$SelectScreen));

  @override
  _$SelectScreen get _value => super._value as _$SelectScreen;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$SelectScreen(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PageSelectType,
    ));
  }
}

/// @nodoc

class _$SelectScreen implements SelectScreen {
  const _$SelectScreen(this.type);

  @override
  final PageSelectType type;

  @override
  String toString() {
    return 'RootUiEvent.selectScreen(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectScreen &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$SelectScreenCopyWith<_$SelectScreen> get copyWith =>
      __$$SelectScreenCopyWithImpl<_$SelectScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() menuTab,
    required TResult Function(PageSelectType type) selectScreen,
  }) {
    return selectScreen(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
  }) {
    return selectScreen?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? menuTab,
    TResult Function(PageSelectType type)? selectScreen,
    required TResult orElse(),
  }) {
    if (selectScreen != null) {
      return selectScreen(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MenuTab value) menuTab,
    required TResult Function(SelectScreen value) selectScreen,
  }) {
    return selectScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
  }) {
    return selectScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MenuTab value)? menuTab,
    TResult Function(SelectScreen value)? selectScreen,
    required TResult orElse(),
  }) {
    if (selectScreen != null) {
      return selectScreen(this);
    }
    return orElse();
  }
}

abstract class SelectScreen implements RootUiEvent {
  const factory SelectScreen(final PageSelectType type) = _$SelectScreen;

  PageSelectType get type;
  @JsonKey(ignore: true)
  _$$SelectScreenCopyWith<_$SelectScreen> get copyWith =>
      throw _privateConstructorUsedError;
}
