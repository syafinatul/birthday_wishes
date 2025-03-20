import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'html.dart';

class BirthdayWishScreen extends StatefulWidget {
  const BirthdayWishScreen({super.key});

  @override
  State<BirthdayWishScreen> createState() => _BirthdayWishScreenState();
}

class _BirthdayWishScreenState extends State<BirthdayWishScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()..loadHtmlString(birthdayHtml);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy Birthday 🎉"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
