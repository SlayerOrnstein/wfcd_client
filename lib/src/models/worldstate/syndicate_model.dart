import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/syndicate.dart';
import 'job_model.dart';

part 'syndicate_model.g.dart';

@JsonSerializable()
class SyndicateModel extends Syndicate {
  const SyndicateModel({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.syndicate,
    required this.syndicateKey,
    required super.active,
    required this.jobs,
  }) : super(
          name: syndicate,
          nameKey: syndicateKey,
          jobs: jobs,
        );

  factory SyndicateModel.fromJson(Map<String, dynamic> json) {
    return _$SyndicateModelFromJson(json);
  }

  final String syndicate;
  final String syndicateKey;

  @override
  final List<JobModel> jobs;

  Map<String, dynamic> toJson() => _$SyndicateModelToJson(this);
}
