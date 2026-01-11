📌 Project Overview

DartShop Core is a pure Dart project that implements the core business logic of a simple e-commerce application.
The project is fully UI-independent and designed to be easily integrated into a Flutter application.

🎯 Project Goals

Build real-world application logic using Dart

Practice clean architecture before Flutter UI integration

Understand:

Models

Services

State handling

CRUD operations

Cart logic

Parameter-based operations

Error-safe data access

🧠 Architecture Summary

Layered architecture (Model – Service – Data)

No UI, no framework dependency

Flutter-ready logic (Provider / Riverpod / Bloc compatible)

📁 Folder Structure
dart_shop/
 ├─ main.dart
 ├─ models/
 │   ├─ product.dart
 │   ├─ cart_item.dart
 ├─ services/
 │   ├─ product_service.dart
 │   ├─ cart_service.dart
 ├─ data/
 │   └─ fake_database.dart

🧱 Models
Product

Represents a product entity with id, title and price.

CartItem

Represents a product inside the cart with quantity support.

⚙️ Services
ProductService

Add, update, delete products

Fetch product details by ID

Simulates dynamic route parameter logic

CartService

Add products to cart

Increase quantity if product already exists

Remove products from cart

Calculate total cart price

🗄️ FakeDatabase

In-memory data storage

Simulates backend or state management layer

Easily replaceable with real API or state provider

▶️ Example Scenario (main.dart)

Create products

Add products to system

Add products to cart

Calculate total price

🚀 Why This Project Matters

Demonstrates real application logic without UI noise

Shows understanding of service-based architecture

Strong foundation for Flutter state management

🔮 Next Steps

Integrate with Flutter UI

Replace FakeDatabase with Provider / Riverpod / Bloc

Connect to REST API or Firebase backend