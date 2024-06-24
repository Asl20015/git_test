import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/data/models/repository/repository.dart';

part 'states.freezed.dart';

@freezed
class RepositoryListState with _$RepositoryListState {
  factory RepositoryListState([
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<Repository> repositories,
    @Default('') String? error,
    String? login,
  ]) = _RepositoryListState;
}
