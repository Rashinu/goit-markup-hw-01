import '../data/fake_database.dart';
import '../models/product.dart';

/// Service for managing product operations
/// Handles CRUD operations and simulates dynamic route parameter logic
class ProductService {
  final FakeDatabase _database;

  ProductService({FakeDatabase? database}) : _database = database ?? FakeDatabase();

  /// Adds a new product to the system
  /// Returns true if successful, false if product with same ID already exists
  bool addProduct(Product product) {
    return _database.addProduct(product);
  }

  /// Updates an existing product
  /// Returns true if successful, false if product doesn't exist
  bool updateProduct(Product product) {
    return _database.updateProduct(product);
  }

  /// Deletes a product by ID
  /// Returns true if successful, false if product doesn't exist
  bool deleteProduct(String id) {
    return _database.deleteProduct(id);
  }

  /// Fetches product details by ID (simulates dynamic route parameter logic)
  /// Returns the product if found, null otherwise
  Product? getProductById(String id) {
    return _database.getProductById(id);
  }

  /// Gets all products in the system
  List<Product> getAllProducts() {
    return _database.getAllProducts();
  }

  /// Checks if a product exists by ID
  bool productExists(String id) {
    return _database.productExists(id);
  }
}
