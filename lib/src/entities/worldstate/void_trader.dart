import 'package:equatable/equatable.dart';
import '../../../objects.dart';

class VoidTrader extends WorldstateObject {
  const VoidTrader({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.character,
    required this.location,
    required this.active,
    required this.inventory,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String character, location;
  final bool active;
  final List<InventoryItem> inventory;

  @override
  List<Object?> get props {
    return super.props..addAll([character, location, active, inventory]);
  }
}

class InventoryItem extends Equatable {
  const InventoryItem({
    required this.item,
    required this.ducats,
    required this.credits,
  });

  final String item;
  final int ducats, credits;

  @override
  List<Object> get props => [item, ducats, credits];
}
