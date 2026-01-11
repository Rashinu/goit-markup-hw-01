/// Product model representing a product entity
class Product {
  final String id;
  final String title;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.price,
  });

  /// Creates a copy of this product with updated fields
  Product copyWith({
    String? id,
    String? title,
    double? price,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }

  @override
  String toString() => 'Product(id: $id, title: $title, price: \$${price.toStringAsFixed(2)})';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
