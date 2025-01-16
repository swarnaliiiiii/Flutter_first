class IcecreamData {
  List<Icecream> icecreams;

  IcecreamData({
    required this.icecreams,
  });

}

class Icecream {
  String flavor;
  String description;
  List<String> toppings;
  List<Ingredient> ingredients;
  String image;
  double price;

  Icecream({
    required this.flavor,
    required this.description,
    required this.toppings,
    required this.ingredients,
    required this.image,
    required this.price,
  });

}

class Ingredient {
  String name;
  String quantity;

  Ingredient({
    required this.name,
    required this.quantity,
  });

}
