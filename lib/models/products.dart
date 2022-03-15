class Product {
  final String image;
  final String title;
  final int price;

  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> demoProduct = [
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 1",
    price: 3,
  ),
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 2",
    price: 4,
  ),
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 3",
    price: 5,
  ),
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 4",
    price: 6,
  ),
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 5",
    price: 7,
  ),
  Product(
    image: "assets/product-candy.jpg",
    title: "Candy 6",
    price: 8,
  ),
];
