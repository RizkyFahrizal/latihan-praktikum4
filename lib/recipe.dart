class Recipe {
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingredient;

  Recipe(this.label, this.imgUrl, this.servings, this.ingredient);

  static List<Recipe> samples = [
    Recipe('Nasi Goreng', 'assets/nasigoreng.jpg', 4, [
      Ingredient(1, 'box', 'rice'),
      Ingredient(2, '', 'telor'),
      Ingredient(0.5, 'kaleng', 'udang'),
    ]),
    Recipe('Satay', 'assets/satay.jpg', 2, [
      Ingredient(1, 'can', 'daging ayam'),
    ]),
    Recipe('Gado - gado', 'assets/gadogado.jpg', 1, [
      Ingredient(2, 'bungkus', 'lontong'),
      Ingredient(2, 'bungkus', 'tahu'),
      Ingredient(2, 'bungkus', 'sayur'),
    ]),
    Recipe('Rendang', 'assets/rendang.jpg', 24, [
      Ingredient(4, 'pcs', 'daging'),
      Ingredient(2, 'pcs ', 'tomat'),
    ]),
    Recipe('Soto', 'assets/soto.jpg', 4, [
      Ingredient(3, 'pcs', 'daging'),
      Ingredient(3, 'pcs', 'ayam'),
      Ingredient(0.5, 'pcs', 'rice'),
    ]),
    Recipe('Gudeg', 'assets/gudeg.jpg', 4, [
      Ingredient(1, 'pcs', 'daging'),
      Ingredient(3, 'pcs', 'telor'),
      Ingredient(3, 'entong', 'nasi'),
    ]),
    Recipe('Tumpeng', 'assets/tumpeng.jpg', 4, [
      Ingredient(1, 'items', 'nasi'),
      Ingredient(1, 'siung', 'kunir'),
      Ingredient(3, 'siung', 'bawang'),
    ]),
    Recipe('Nasi Uduk', 'assets/uduk.jpg', 4, [
      Ingredient(1, 'items', 'nasi'),
      Ingredient(1, 'siung', 'bawang goreng'),
    ]),
    Recipe('Asam Manis', 'assets/asammanis.jpg', 4, [
      Ingredient(1, 'liter', 'air'),
      Ingredient(1, 'pcs', 'udang'),
      Ingredient(200, 'gr', 'nasi'),
    ]),
    Recipe('Pecel', 'assets/pecel.jpg', 4, [
      Ingredient(1, 'pcs', 'nasi'),
      Ingredient(2, 'pcs', 'daging'),
      Ingredient(3, 'pcs', 'pecel'),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
