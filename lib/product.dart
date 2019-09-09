/// Product model that contains Product characteristics, and access, process
/// persisted Product

class Product {
  String title;
  String description;
  String price;
  List<String> colors;
  String category;
  String imageLink;

  Product(
      this.title, this.description, this.price, this.colors, this.imageLink);

  List<Product> getProducts() {
    ///todo: fetch items from the json file
    ///todo: image lazy loading

    return [
      Product(
          "title1", "description1", "200", ["color1", "color2"], "imageLink1"),
      Product(
          "title2", "description1", "300", ["color1", "color2"], "imageLink1"),
    ];
  }
}
