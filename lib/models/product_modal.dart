class Product {
  String? image;
  String? name;
  String? deliveryTime;
  double? rating;
  double? price;
  bool? isFav;
  Product(
      {this.image,
      this.name,
      this.deliveryTime,
      this.rating,
      this.price,
      this.isFav});
}

class Products {
  List<Product> items = [
    Product(
        image: 'assets/dish5.png',
        name: 'Cheese Pizza',
        deliveryTime: '50min',
        rating: 4.8,
        price: 12.8,
        isFav: true),
    Product(
        image: 'assets/dish1.png',
        name: 'Egg Sandwiche',
        deliveryTime: '35min',
        rating: 4.3,
        price: 18.0,
        isFav: false),
    Product(
        image: 'assets/dish2.png',
        name: 'Fries Thali',
        deliveryTime: '40min',
        rating: 4.6,
        price: 14.9,
        isFav: false),
    Product(
        image: 'assets/dish3.png',
        name: 'Veg Pasta',
        deliveryTime: '20min',
        rating: 4.0,
        price: 9.99,
        isFav: true),
    Product(
        image: 'assets/dish4.png',
        name: 'Chicken Soup',
        deliveryTime: '25min',
        rating: 4.7,
        price: 13.99,
        isFav: false),
    Product(
        image: 'assets/dish6.png',
        name: 'Sea Food',
        deliveryTime: '30min',
        rating: 4.4,
        price: 20.0,
        isFav: false),
  ];
}
