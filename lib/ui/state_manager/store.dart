import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/ui/state_manager/repositories/states.dart';
import 'package:git_test/ui/state_manager/users/states.dart';

part 'store.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required UserListState userListState,
    required RepositoryListState repositoryListState,
  }) = _AppState;
}
