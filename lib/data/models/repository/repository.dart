import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository {
  final int id;
  final String name;
  final String? description;
  final String url;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @JsonKey(name: 'default_branch')
  final String defaultBranch;

  Repository({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.updatedAt,
    required this.forksCount,
    required this.defaultBranch,
  });

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}
