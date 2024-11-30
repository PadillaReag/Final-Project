import 'package:flutter/material.dart';
import '../widgets/game_item.dart';
import '../models/game_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Game> games = const [
    Game(
      id: '1',
      title: 'Cyberpunk 2077',
      price: 59.99,
      description: 'A futuristic RPG adventure.',
      imageUrl:
          'https://i.imgur.com/SRDx2eY.jpg', // Corrected Cyberpunk image URL
      genre: 'RPG',
      rating: 4.5,
    ),
    Game(
      id: '2',
      title: 'The Witcher 3',
      price: 39.99,
      description: 'An epic fantasy RPG.',
      imageUrl:
          'https://i.imgur.com/v5372Xr.jpg', // Corrected Witcher 3 image URL
      genre: 'Fantasy',
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/Designer.png',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text('GamerHub'),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return GameItem(game: games[index]);
        },
      ),
    );
  }
}
