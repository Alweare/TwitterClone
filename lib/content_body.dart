import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligne tout à gauche
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/laptop.jpg', width: 125),
            const SizedBox(width: 10), // Espace entre l'image et le texte
            const Expanded( // Utilisation d'Expanded pour occuper l'espace restant
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligne le texte à gauche
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacement entre "Auteur" et "Date"
                    children: [
                      const Text('Auteur', textAlign: TextAlign.left),
                      const Text('Date', textAlign: TextAlign.right),
                    ],
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: Colors.lightBlue,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Répondre'),
              Text('Retweet'),
              Text('Favoris'),
            ],
          ),
        ),
      ],
    );
  }
}
