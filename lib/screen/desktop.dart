import 'package:flutter/material.dart';

class DesktopProfile extends StatelessWidget {
  const DesktopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage('assets/smith.jpg'),
        ),
        SizedBox(height: 20.0),
        Text(
          'Ese Smith',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
