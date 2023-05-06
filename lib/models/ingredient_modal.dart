class Ingredient {
  String? image;
  String? name;
  Ingredient({this.image, this.name});
}

class Ingredients {
  List<Ingredient> items = [
    Ingredient(image: 'assets/ingre1.png', name: 'Noddle'),
    Ingredient(image: 'assets/ingre2.png', name: 'Shrimp'),
    Ingredient(image: 'assets/ingre3.png', name: 'Egg'),
    Ingredient(image: 'assets/ingre4.png', name: 'Scallion')
  ];
}
