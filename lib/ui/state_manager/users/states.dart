import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/data/models/user/user.dart';

part 'states.freezed.dart';

@freezed
class UserListState with _$UserListState {
  factory UserListState([
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<User> users,
    @Default('') String? error,
    @Default(true) bool isNextPageAvailable,
    @Default(false) bool isLoadingNextPage,
    @Default(0) int page,
  ]) = _UserListState;
}
