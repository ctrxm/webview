import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const OVRHUB());
}

class OVRHUB extends StatelessWidget {
  const OVRHUB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OVRHUB',
      debugShowCheckedModeBanner: false,
      home: const WebViewPage(),
    );
  }
}

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://ovrsd.eu.cc/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OVRHUB"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
