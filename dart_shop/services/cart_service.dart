import '../models/cart_item.dart';
import '../models/product.dart';

/// Service for managing cart operations
class CartService {
  // In-memory cart storage
  final Map<String, CartItem> _cartItems = {};

  /// Adds a product to the cart
  /// If product already exists, increases its quantity
  void addToCart(Product product, [int quantity = 1]) {
    if (_cartItems.containsKey(product.id)) {
      // Product already in cart, increase quantity
      _cartItems[product.id]!.increaseQuantity(quantity);
    } else {
      // New product, add to cart
      _cartItems[product.id] = CartItem(product: product, quantity: quantity);
    }
  }

  /// Removes a product from the cart by product ID
  /// Returns true if removed successfully, false if product not in cart
  bool removeFromCart(String productId) {
    if (_cartItems.containsKey(productId)) {
      _cartItems.remove(productId);
      return true;
    }
    return false;
  }

  /// Gets a cart item by product ID
  CartItem? getCartItem(String productId) {
    return _cartItems[productId];
  }

  /// Gets all items in the cart
  List<CartItem> getAllCartItems() {
    return _cartItems.values.toList();
  }

  /// Calculates the total price of all items in the cart
  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in _cartItems.values) {
      total += item.totalPrice;
    }
    return total;
  }

  /// Gets the total number of items in the cart (sum of all quantities)
  int getTotalItemCount() {
    int count = 0;
    for (var item in _cartItems.values) {
      count += item.quantity;
    }
    return count;
  }

  /// Gets the number of unique products in the cart
  int getUniqueItemCount() {
    return _cartItems.length;
  }

  /// Clears all items from the cart
  void clearCart() {
    _cartItems.clear();
  }

  /// Checks if cart is empty
  bool isEmpty() {
    return _cartItems.isEmpty;
  }
}
