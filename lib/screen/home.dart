import 'package:flutter/material.dart';
import 'package:personal_details/screen/desktop.dart';
import 'package:personal_details/screen/mobile.dart';
import 'package:personal_details/screen/webview.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  // For web screens or larger screens
                  return const DesktopProfile();
                } else {
                  // For mobile screens
                  return const MobileProfile();
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GitHubWebView()));
              },
              child: const Text('Open GitHub'),
            )
          ],
        ),
      ),
    );
  }
}
