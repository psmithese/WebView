import 'package:flutter/material.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage('assets/smith.jpg'),
        ),
        SizedBox(height: 15.0),
        Text(
          'Ese Smith',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
