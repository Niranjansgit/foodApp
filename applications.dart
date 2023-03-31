import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewApp extends StatefulWidget {
  //const WebViewApp({super.key});
 String url;
 WebViewApp(this.url);
  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override   
  void initState() {
    super.initState();
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)

      ..loadRequest(
        Uri.parse(widget.url,
        
        ),
        
        
      );
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Flutter WebView'),

      ),
      body: WebViewWidget(
        controller: controller,
        
      ),
    );
  }
}