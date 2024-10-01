import 'package:flutter/cupertino.dart';

class MenuBarCustom extends StatelessWidget {
  const MenuBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              color: const Color(0xF958b0f0),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nouveau'),
                    Text('Acceuil'),
                    Text('Rechercher'),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
