import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuBarCustom extends StatelessWidget {
  const MenuBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              color: const Color(0xF958b0f0),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.pen)),
                    const Text('Acceuil'),
                    IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass)),

                  ],
                ),
              )),
        ),
      ],
    );
  }
}
