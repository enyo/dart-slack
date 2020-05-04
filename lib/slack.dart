import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'src/messages.dart';

export 'src/messages.dart';

class Slack {
  final String url;
  Slack(this.url);

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  Future<http.Response> send(Message message) async {
    return await http.post(url,
        headers: {'Content-type': 'application/json'},
        body: jsonEncode(message));
  }
}
