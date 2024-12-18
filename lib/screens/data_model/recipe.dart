class Recipe {
  String label;
  String imageUrl;
  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  static List<Recipe> samples=[
    Recipe(
      'spaghetti and meatballs',
      'assets/meat.jpg',
      4,
      [
        Ingredient(1, 'Box', 'Spaghetti'),
        Ingredient(4, 'PCS', 'Frozen Meatballs'),
        Ingredient(1, 'PKT', 'Meat Masala')
      ],
    ),
     Recipe(
      'Tomato Soupe',
      'assets/meat1.jpg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Sause'),
      ]

    ),
     Recipe(
      'Girriled Cheese',
      'assets/meat2.jpg',
      10,
      [
        Ingredient(2, 'pkt', 'cheese'),
        Ingredient(2, 'slice', 'Bread'),

      ]
    ),
     Recipe(
      'Sauses',
      'assets/meat3.jpg',
       12,
      [
        Ingredient(2, 'kg', 'Chicken'),
        Ingredient(1, 'pkt', 'Meat Masala'),

      ]
    ),
     Recipe(
      'hawaiian Pizza',
      'assets/meat4.jpg',
       6,
      [
        Ingredient(1, 'pkt', 'cheese'),
        Ingredient(2, 'slice', 'Bread'),

      ]
    ),

  ];
  int servings;
  List <Ingredient> ingredients;
}
class Ingredient{
  double quantity;
  String measure;
  String name;
  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );


}