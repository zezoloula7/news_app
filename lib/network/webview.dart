import 'package:webview_flutter/webview_flutter.dart';

var controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );