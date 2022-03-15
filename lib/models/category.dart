class Category {
  final String icon;
  final String title;

  Category({required this.icon, required this.title});
}

List<Category> demoCategory = [
  Category(
    icon: "assets/menu-candy.png",
    title: "Candies",
  ),
  Category(
    icon: "assets/menu-chocolate.png",
    title: "Chocolates",
  ),
  Category(
    icon: "assets/menu-cookie.png",
    title: "Cookies",
  ),
  Category(
    icon: "assets/menu-cupcake.png",
    title: "Cupcakes",
  ),
  Category(
    icon: "assets/menu-donut.png",
    title: "Donuts",
  ),
  Category(
    icon: "assets/menu-macarons.png",
    title: "Macarons",
  ),
  Category(
    icon: "assets/menu-surprise.png",
    title: "GiftBox",
  ),
];
