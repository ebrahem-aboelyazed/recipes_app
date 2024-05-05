// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesStateCopyWith<$Res> {
  factory $RecipesStateCopyWith(
          RecipesState value, $Res Function(RecipesState) then) =
      _$RecipesStateCopyWithImpl<$Res, RecipesState>;
}

/// @nodoc
class _$RecipesStateCopyWithImpl<$Res, $Val extends RecipesState>
    implements $RecipesStateCopyWith<$Res> {
  _$RecipesStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipesInitialImplCopyWith<$Res> {
  factory _$$RecipesInitialImplCopyWith(_$RecipesInitialImpl value,
          $Res Function(_$RecipesInitialImpl) then) =
      __$$RecipesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesInitialImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesInitialImpl>
    implements _$$RecipesInitialImplCopyWith<$Res> {
  __$$RecipesInitialImplCopyWithImpl(
      _$RecipesInitialImpl _value, $Res Function(_$RecipesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesInitialImpl implements RecipesInitial {
  const _$RecipesInitialImpl();

  @override
  String toString() {
    return 'RecipesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipesInitial implements RecipesState {
  const factory RecipesInitial() = _$RecipesInitialImpl;
}

/// @nodoc
abstract class _$$RecipesLoadingImplCopyWith<$Res> {
  factory _$$RecipesLoadingImplCopyWith(_$RecipesLoadingImpl value,
          $Res Function(_$RecipesLoadingImpl) then) =
      __$$RecipesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesLoadingImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesLoadingImpl>
    implements _$$RecipesLoadingImplCopyWith<$Res> {
  __$$RecipesLoadingImplCopyWithImpl(
      _$RecipesLoadingImpl _value, $Res Function(_$RecipesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipesLoadingImpl implements RecipesLoading {
  const _$RecipesLoadingImpl();

  @override
  String toString() {
    return 'RecipesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipesLoading implements RecipesState {
  const factory RecipesLoading() = _$RecipesLoadingImpl;
}

/// @nodoc
abstract class _$$RecipesLoadedImplCopyWith<$Res> {
  factory _$$RecipesLoadedImplCopyWith(
          _$RecipesLoadedImpl value, $Res Function(_$RecipesLoadedImpl) then) =
      __$$RecipesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$$RecipesLoadedImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesLoadedImpl>
    implements _$$RecipesLoadedImplCopyWith<$Res> {
  __$$RecipesLoadedImplCopyWithImpl(
      _$RecipesLoadedImpl _value, $Res Function(_$RecipesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RecipesLoadedImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$RecipesLoadedImpl implements RecipesLoaded {
  const _$RecipesLoadedImpl(final List<Recipe> recipes) : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipesState.loaded(recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesLoadedImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesLoadedImplCopyWith<_$RecipesLoadedImpl> get copyWith =>
      __$$RecipesLoadedImplCopyWithImpl<_$RecipesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) {
    return loaded(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) {
    return loaded?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecipesLoaded implements RecipesState {
  const factory RecipesLoaded(final List<Recipe> recipes) = _$RecipesLoadedImpl;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$$RecipesLoadedImplCopyWith<_$RecipesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesSearchingImplCopyWith<$Res> {
  factory _$$RecipesSearchingImplCopyWith(_$RecipesSearchingImpl value,
          $Res Function(_$RecipesSearchingImpl) then) =
      __$$RecipesSearchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$RecipesSearchingImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesSearchingImpl>
    implements _$$RecipesSearchingImplCopyWith<$Res> {
  __$$RecipesSearchingImplCopyWithImpl(_$RecipesSearchingImpl _value,
      $Res Function(_$RecipesSearchingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$RecipesSearchingImpl(
      freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RecipesSearchingImpl implements RecipesSearching {
  const _$RecipesSearchingImpl(this.search);

  @override
  final String? search;

  @override
  String toString() {
    return 'RecipesState.searching(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSearchingImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesSearchingImplCopyWith<_$RecipesSearchingImpl> get copyWith =>
      __$$RecipesSearchingImplCopyWithImpl<_$RecipesSearchingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) {
    return searching(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) {
    return searching?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class RecipesSearching implements RecipesState {
  const factory RecipesSearching(final String? search) = _$RecipesSearchingImpl;

  String? get search;
  @JsonKey(ignore: true)
  _$$RecipesSearchingImplCopyWith<_$RecipesSearchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesFailureImplCopyWith<$Res> {
  factory _$$RecipesFailureImplCopyWith(_$RecipesFailureImpl value,
          $Res Function(_$RecipesFailureImpl) then) =
      __$$RecipesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RecipesFailureImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesFailureImpl>
    implements _$$RecipesFailureImplCopyWith<$Res> {
  __$$RecipesFailureImplCopyWithImpl(
      _$RecipesFailureImpl _value, $Res Function(_$RecipesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RecipesFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RecipesFailureImpl implements RecipesFailure {
  const _$RecipesFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RecipesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesFailureImplCopyWith<_$RecipesFailureImpl> get copyWith =>
      __$$RecipesFailureImplCopyWithImpl<_$RecipesFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(String? search) searching,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes)? loaded,
    TResult? Function(String? search)? searching,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(String? search)? searching,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesLoaded value) loaded,
    required TResult Function(RecipesSearching value) searching,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesLoaded value)? loaded,
    TResult? Function(RecipesSearching value)? searching,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesLoaded value)? loaded,
    TResult Function(RecipesSearching value)? searching,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RecipesFailure implements RecipesState {
  const factory RecipesFailure(final Failure failure) = _$RecipesFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RecipesFailureImplCopyWith<_$RecipesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
