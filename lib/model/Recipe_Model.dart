class RecipeModel {
  String name;
  String description;
  String cal;
  String protein;
  String imageAsset;
  List<String> ingredients;
  List<String> step;

  RecipeModel(
      {required this.name,
      required this.description,
      required this.cal,
      required this.protein,
      required this.ingredients,
      required this.step,
      required this.imageAsset});
}
