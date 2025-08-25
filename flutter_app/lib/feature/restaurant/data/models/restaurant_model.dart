class Restaurant {
  final String name;
  final String imageUrl;
  final double rating;
  final bool isFavorite;

  Restaurant({
    required this.name,
    required this.imageUrl,
    required this.rating,
    this.isFavorite = false,
  });

  Restaurant copyWith({bool? isFavorite}) => Restaurant(
    name: name,
    imageUrl: imageUrl,
    rating: rating,
    isFavorite: isFavorite ?? this.isFavorite,
  );
}
