import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopApp extends StatelessWidget implements PreferredSizeWidget{
  const TopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.twitter ,
                size: 30,  // Taille adaptée pour un AppBar
                color: Colors.white,
              ),
              const SizedBox(width: 10),  // Ajoute un espace entre l'icône et le texte
              const Text('Twitter'),
            ],
          ),
          backgroundColor: Colors.blue,
        ),


      ],
    )

    ;

  }

  @override

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);



}