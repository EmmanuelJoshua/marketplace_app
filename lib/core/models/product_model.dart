class ProductModel {
  const ProductModel({
    required this.image,
    required this.type,
    required this.name,
    required this.rating,
    required this.price,
    required this.ratings,
    required this.isFavorite,
    required this.productImages,
    required this.storeName,
  });

  final String image;
  final String type;
  final String name;
  final double rating;
  final double price;
  final int ratings;
  final bool isFavorite;
  final List<String> productImages;
  final String storeName;
}
