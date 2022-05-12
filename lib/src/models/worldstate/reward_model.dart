import 'package:json_annotation/json_annotation.dart';

import '../../entities/worldstate/reward.dart';

part 'reward_model.g.dart';

@JsonSerializable()
class RewardModel extends Reward {
  const RewardModel({
    required super.itemString,
    required super.thumbnail,
    required super.asString,
    required super.credits,
    required this.countedItems,
  }) : super(
          countedItems: countedItems,
        );

  factory RewardModel.fromJson(Map<String, dynamic> json) {
    return _$RewardModelFromJson(json);
  }

  @override
  final List<CountedItemModel> countedItems;

  Map<String, dynamic> toJson() => _$RewardModelToJson(this);
}

@JsonSerializable()
class CountedItemModel extends CountedItem {
  const CountedItemModel({required int super.count, required super.type});

  factory CountedItemModel.fromJson(Map<String, dynamic> json) {
    return _$CountedItemModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountedItemModelToJson(this);
}
