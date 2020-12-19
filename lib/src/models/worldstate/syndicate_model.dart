import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/syndicate.dart';
import 'job_model.dart';

part 'syndicate_model.g.dart';

@JsonSerializable()
class SyndicateModel extends Syndicate {
  const SyndicateModel({
    String id,
    DateTime activation,
    DateTime expiry,
    this.syndicate,
    bool active,
    this.jobs,
  }) : super(
          id: id,
          activation: activation,
          expiry: expiry,
          name: syndicate,
          active: active,
        );

  factory SyndicateModel.fromJson(Map<String, dynamic> json) {
    return _$SyndicateModelFromJson(json);
  }

  final String syndicate;

  @override
  final List<JobModel> jobs;

  Map<String, dynamic> toJson() => _$SyndicateModelToJson(this);
}
