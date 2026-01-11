import 'models/product.dart';
import 'services/product_service.dart';
import 'services/cart_service.dart';

void main() {
  print('🛒 DartShop Core - Example Scenario\n');

  // Initialize services
  final productService = ProductService();
  final cartService = CartService();

  // Create products
  print('📦 Creating products...');
  final product1 = Product(id: '1', title: 'Laptop', price: 999.99);
  final product2 = Product(id: '2', title: 'Mouse', price: 29.99);
  final product3 = Product(id: '3', title: 'Keyboard', price: 79.99);

  // Add products to system
  print('\n➕ Adding products to system...');
  productService.addProduct(product1);
  productService.addProduct(product2);
  productService.addProduct(product3);

  // Display all products
  print('\n📋 All products in system:');
  final allProducts = productService.getAllProducts();
  for (var product in allProducts) {
    print('  - $product');
  }

  // Fetch product by ID (simulating route parameter logic)
  print('\n🔍 Fetching product by ID: "2"');
  final fetchedProduct = productService.getProductById('2');
  if (fetchedProduct != null) {
    print('  Found: $fetchedProduct');
  } else {
    print('  Product not found');
  }

  // Add products to cart
  print('\n🛒 Adding products to cart...');
  cartService.addToCart(product1); // Laptop x1
  cartService.addToCart(product2, 2); // Mouse x2
  cartService.addToCart(product3); // Keyboard x1
  cartService.addToCart(product2); // Mouse x1 more (should become x3 total)

  // Display cart items
  print('\n📦 Items in cart:');
  final cartItems = cartService.getAllCartItems();
  for (var item in cartItems) {
    print('  - $item');
  }

  // Calculate total price
  final totalPrice = cartService.calculateTotalPrice();
  print('\n💰 Total cart price: \$${totalPrice.toStringAsFixed(2)}');
  print('📊 Total items: ${cartService.getTotalItemCount()}');
  print('📦 Unique products: ${cartService.getUniqueItemCount()}');

  // Update a product
  print('\n✏️  Updating product "2" (Mouse) price to 19.99...');
  final updatedProduct = product2.copyWith(price: 19.99);
  productService.updateProduct(updatedProduct);

  // Recalculate total (note: cart still has old price)
  print('\n💰 Cart total after product update (cart still has old price): \$${cartService.calculateTotalPrice().toStringAsFixed(2)}');

  // Remove item from cart
  print('\n🗑️  Removing Mouse from cart...');
  cartService.removeFromCart('2');
  
  final newTotal = cartService.calculateTotalPrice();
  print('💰 New cart total: \$${newTotal.toStringAsFixed(2)}');

  print('\n✅ Example scenario completed!');
}
