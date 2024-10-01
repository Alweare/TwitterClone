import 'package:flutter/cupertino.dart';

class BottomBar extends StatelessWidget{
  const BottomBar({super.key});



  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Fil'),
        Text('Notifications'),
        Text('Messages'),
        Text('Moi'),
      ],
    );
  }

}