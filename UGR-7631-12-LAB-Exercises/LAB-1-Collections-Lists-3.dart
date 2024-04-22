void main() {
  List<Map<String, dynamic>> shoppingCart = [];

  // Add items to the cart
  addToCart(shoppingCart, 'Bag', 3, 200);
  addToCart(shoppingCart, 'Laptop', 1, 85000);
  addToCart(shoppingCart, 'Notebook', 1, 60);

  // Calculate total price
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$$totalPrice');

  // Remove an item from the cart
  removeFromCart(shoppingCart, 'Laptop');

  // Calculate total price after removal
  totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price after Removal: \$$totalPrice');
}

void addToCart(List<Map<String, dynamic>> cart, String productName, int quantity, double price) {
  Map<String, dynamic> item = {
    'product': productName,
    'quantity': quantity,
    'price': price,
  };

  cart.add(item);
}

double calculateTotalPrice(List<Map<String, dynamic>> cart) {
  double total = 0;

  for (var item in cart) {
    int quantity = item['quantity'];
    double price = item['price'];
    total += quantity * price;
  }

  return total;
}

void removeFromCart(List<Map<String, dynamic>> cart, String productName) {
  cart.removeWhere((item) => item['product'] == productName);
}