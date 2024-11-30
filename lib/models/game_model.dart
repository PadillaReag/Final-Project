class Game {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  final String genre;
  final double rating;

  const Game({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.genre,
    this.rating = 3.0, // Default rating
  });
}
