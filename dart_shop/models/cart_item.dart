import 'product.dart';

/// CartItem model representing a product inside the cart with quantity
class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });

  /// Calculates the total price for this cart item (product price * quantity)
  double get totalPrice => product.price * quantity;

  /// Increases quantity by the specified amount (default: 1)
  void increaseQuantity([int amount = 1]) {
    quantity += amount;
  }

  /// Decreases quantity by the specified amount (default: 1)
  void decreaseQuantity([int amount = 1]) {
    if (quantity > amount) {
      quantity -= amount;
    } else {
      quantity = 0;
    }
  }

  @override
  String toString() =>
      'CartItem(product: ${product.title}, quantity: $quantity, total: \$${totalPrice.toStringAsFixed(2)})';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem &&
          runtimeType == other.runtimeType &&
          product.id == other.product.id;

  @override
  int get hashCode => product.id.hashCode;
}
