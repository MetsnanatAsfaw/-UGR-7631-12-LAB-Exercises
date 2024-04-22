class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product1 = Product('Samsung',1950, 3);

  // Calculate the total cost of the product
  double totalCost = product1.calculateTotalCost();

  // Print the total cost
  print('Total cost: \$${totalCost.toStringAsFixed(2)}');
}