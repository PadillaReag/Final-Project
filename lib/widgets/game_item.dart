import 'package:final_project_padilla/game_detail_screen.dart';
import 'package:flutter/material.dart';
import '../models/game_model.dart';

class GameItem extends StatelessWidget {
  final Game game;

  const GameItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                GameDetailScreen(game: game), // Ensure this file exists
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              game.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                game.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium, // Updated text style
              ),
            ),
          ],
        ),
      ),
    );
  }
}
