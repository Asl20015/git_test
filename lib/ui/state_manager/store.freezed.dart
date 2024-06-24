// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  UserListState get userListState => throw _privateConstructorUsedError;
  RepositoryListState get repositoryListState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {UserListState userListState, RepositoryListState repositoryListState});

  $UserListStateCopyWith<$Res> get userListState;
  $RepositoryListStateCopyWith<$Res> get repositoryListState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userListState = null,
    Object? repositoryListState = null,
  }) {
    return _then(_value.copyWith(
      userListState: null == userListState
          ? _value.userListState
          : userListState // ignore: cast_nullable_to_non_nullable
              as UserListState,
      repositoryListState: null == repositoryListState
          ? _value.repositoryListState
          : repositoryListState // ignore: cast_nullable_to_non_nullable
              as RepositoryListState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserListStateCopyWith<$Res> get userListState {
    return $UserListStateCopyWith<$Res>(_value.userListState, (value) {
      return _then(_value.copyWith(userListState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryListStateCopyWith<$Res> get repositoryListState {
    return $RepositoryListStateCopyWith<$Res>(_value.repositoryListState,
        (value) {
      return _then(_value.copyWith(repositoryListState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserListState userListState, RepositoryListState repositoryListState});

  @override
  $UserListStateCopyWith<$Res> get userListState;
  @override
  $RepositoryListStateCopyWith<$Res> get repositoryListState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userListState = null,
    Object? repositoryListState = null,
  }) {
    return _then(_$AppStateImpl(
      userListState: null == userListState
          ? _value.userListState
          : userListState // ignore: cast_nullable_to_non_nullable
              as UserListState,
      repositoryListState: null == repositoryListState
          ? _value.repositoryListState
          : repositoryListState // ignore: cast_nullable_to_non_nullable
              as RepositoryListState,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.userListState, required this.repositoryListState});

  @override
  final UserListState userListState;
  @override
  final RepositoryListState repositoryListState;

  @override
  String toString() {
    return 'AppState(userListState: $userListState, repositoryListState: $repositoryListState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.userListState, userListState) ||
                other.userListState == userListState) &&
            (identical(other.repositoryListState, repositoryListState) ||
                other.repositoryListState == repositoryListState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userListState, repositoryListState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final UserListState userListState,
      required final RepositoryListState repositoryListState}) = _$AppStateImpl;

  @override
  UserListState get userListState;
  @override
  RepositoryListState get repositoryListState;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
