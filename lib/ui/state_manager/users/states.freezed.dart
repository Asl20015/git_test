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
mixin _$UserListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isNextPageAvailable => throw _privateConstructorUsedError;
  bool get isLoadingNextPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<User> users,
      String? error,
      bool isNextPageAvailable,
      bool isLoadingNextPage,
      int page});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? users = null,
    Object? error = freezed,
    Object? isNextPageAvailable = null,
    Object? isLoadingNextPage = null,
    Object? page = null,
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
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListStateImplCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$UserListStateImplCopyWith(
          _$UserListStateImpl value, $Res Function(_$UserListStateImpl) then) =
      __$$UserListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<User> users,
      String? error,
      bool isNextPageAvailable,
      bool isLoadingNextPage,
      int page});
}

/// @nodoc
class __$$UserListStateImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListStateImpl>
    implements _$$UserListStateImplCopyWith<$Res> {
  __$$UserListStateImplCopyWithImpl(
      _$UserListStateImpl _value, $Res Function(_$UserListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? users = null,
    Object? error = freezed,
    Object? isNextPageAvailable = null,
    Object? isLoadingNextPage = null,
    Object? page = null,
  }) {
    return _then(_$UserListStateImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserListStateImpl implements _UserListState {
  _$UserListStateImpl(
      [this.isLoading = false,
      this.isError = false,
      final List<User> users = const [],
      this.error = '',
      this.isNextPageAvailable = true,
      this.isLoadingNextPage = false,
      this.page = 0])
      : _users = users;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final bool isNextPageAvailable;
  @override
  @JsonKey()
  final bool isLoadingNextPage;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'UserListState(isLoading: $isLoading, isError: $isError, users: $users, error: $error, isNextPageAvailable: $isNextPageAvailable, isLoadingNextPage: $isLoadingNextPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable) &&
            (identical(other.isLoadingNextPage, isLoadingNextPage) ||
                other.isLoadingNextPage == isLoadingNextPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_users),
      error,
      isNextPageAvailable,
      isLoadingNextPage,
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      __$$UserListStateImplCopyWithImpl<_$UserListStateImpl>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  factory _UserListState(
      [final bool isLoading,
      final bool isError,
      final List<User> users,
      final String? error,
      final bool isNextPageAvailable,
      final bool isLoadingNextPage,
      final int page]) = _$UserListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<User> get users;
  @override
  String? get error;
  @override
  bool get isNextPageAvailable;
  @override
  bool get isLoadingNextPage;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
