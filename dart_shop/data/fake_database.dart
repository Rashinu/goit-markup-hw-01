import '../models/product.dart';

/// In-memory fake database for storing products
/// Simulates backend or state management layer
class FakeDatabase {
  // Private storage for products
  static final Map<String, Product> _products = {};

  /// Adds a product to the database
  /// Returns true if added successfully, false if product with same ID already exists
  bool addProduct(Product product) {
    if (_products.containsKey(product.id)) {
      return false;
    }
    _products[product.id] = product;
    return true;
  }

  /// Updates an existing product in the database
  /// Returns true if updated successfully, false if product doesn't exist
  bool updateProduct(Product product) {
    if (!_products.containsKey(product.id)) {
      return false;
    }
    _products[product.id] = product;
    return true;
  }

  /// Deletes a product from the database by ID
  /// Returns true if deleted successfully, false if product doesn't exist
  bool deleteProduct(String id) {
    if (!_products.containsKey(id)) {
      return false;
    }
    _products.remove(id);
    return true;
  }

  /// Gets a product by ID, returns null if not found
  Product? getProductById(String id) {
    return _products[id];
  }

  /// Gets all products in the database
  List<Product> getAllProducts() {
    return _products.values.toList();
  }

  /// Checks if a product exists by ID
  bool productExists(String id) {
    return _products.containsKey(id);
  }

  /// Clears all products from the database (useful for testing)
  void clear() {
    _products.clear();
  }
}
