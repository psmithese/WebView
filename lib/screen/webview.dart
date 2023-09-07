import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({super.key});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/psmithese'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GitHub Profile'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
