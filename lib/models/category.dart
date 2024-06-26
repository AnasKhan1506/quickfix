// category.dart
class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "Wheels & Tires", image: "assets/images/tyre.png"),
  Category(title: "Brake", image: "assets/images/brake.png"),
  Category(title: "Drivetrain", image: "assets/images/chain.png"),
  Category(title: "Electrical", image: "assets/images/light.png"),
  Category(title: "General Maintenance", image: "assets/images/wheel.png"),
  Category(title: "Components", image: "assets/images/component.png"),
  Category(title: "Safety", image: "assets/images/safety.png"),
  Category(title: "Accessories", image: "assets/images/product.png"),
];


// class Category {
//   final String title;
//   final String image;

//   Category({
//     required this.title,
//     required this.image,
//   });
// }

// final List<Category> categories = [
//   Category(title: "Shoes", image: "assets/images/shoes.jpg"),
//   Category(title: "Beauty", image: "assets/images/beauty.png"),
//   Category(title: "PC", image: "assets/images/pc.jpg"),
//   Category(title: "Mobile", image: "assets/images/mobile.jpg"),
//   Category(title: "Watch", image: "assets/images/watch.png"),
// ];
