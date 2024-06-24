// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepositoryListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Repository> get repositories => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryListStateCopyWith<RepositoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryListStateCopyWith<$Res> {
  factory $RepositoryListStateCopyWith(
          RepositoryListState value, $Res Function(RepositoryListState) then) =
      _$RepositoryListStateCopyWithImpl<$Res, RepositoryListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Repository> repositories,
      String? error,
      String? login});
}

/// @nodoc
class _$RepositoryListStateCopyWithImpl<$Res, $Val extends RepositoryListState>
    implements $RepositoryListStateCopyWith<$Res> {
  _$RepositoryListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? repositories = null,
    Object? error = freezed,
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryListStateImplCopyWith<$Res>
    implements $RepositoryListStateCopyWith<$Res> {
  factory _$$RepositoryListStateImplCopyWith(_$RepositoryListStateImpl value,
          $Res Function(_$RepositoryListStateImpl) then) =
      __$$RepositoryListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Repository> repositories,
      String? error,
      String? login});
}

/// @nodoc
class __$$RepositoryListStateImplCopyWithImpl<$Res>
    extends _$RepositoryListStateCopyWithImpl<$Res, _$RepositoryListStateImpl>
    implements _$$RepositoryListStateImplCopyWith<$Res> {
  __$$RepositoryListStateImplCopyWithImpl(_$RepositoryListStateImpl _value,
      $Res Function(_$RepositoryListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? repositories = null,
    Object? error = freezed,
    Object? login = freezed,
  }) {
    return _then(_$RepositoryListStateImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RepositoryListStateImpl implements _RepositoryListState {
  _$RepositoryListStateImpl(
      [this.isLoading = false,
      this.isError = false,
      final List<Repository> repositories = const [],
      this.error = '',
      this.login])
      : _repositories = repositories;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  final List<Repository> _repositories;
  @override
  @JsonKey()
  List<Repository> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  @JsonKey()
  final String? error;
  @override
  final String? login;

  @override
  String toString() {
    return 'RepositoryListState(isLoading: $isLoading, isError: $isError, repositories: $repositories, error: $error, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_repositories), error, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryListStateImplCopyWith<_$RepositoryListStateImpl> get copyWith =>
      __$$RepositoryListStateImplCopyWithImpl<_$RepositoryListStateImpl>(
          this, _$identity);
}

abstract class _RepositoryListState implements RepositoryListState {
  factory _RepositoryListState(
      [final bool isLoading,
      final bool isError,
      final List<Repository> repositories,
      final String? error,
      final String? login]) = _$RepositoryListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Repository> get repositories;
  @override
  String? get error;
  @override
  String? get login;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryListStateImplCopyWith<_$RepositoryListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
