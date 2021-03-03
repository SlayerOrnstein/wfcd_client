import '../../../objects.dart';

class DarvoDeal extends WorldstateObject {
  const DarvoDeal({
    required String id,
    required DateTime activation,
    required DateTime expiry,
    required this.item,
    required this.originalPrice,
    required this.salePrice,
    required this.total,
    required this.sold,
    required this.discount,
  }) : super(id: id, activation: activation, expiry: expiry);

  final String item;
  final int originalPrice, salePrice, total, sold, discount;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([item, originalPrice, salePrice, total, sold, discount]);
  }
}
