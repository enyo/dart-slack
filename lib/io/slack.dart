library slack_io;

import 'dart:async';

import 'package:http/http.dart' as http;

import '../src/slacksrc.dart';

export '../src/slacksrc.dart';

class Slack {
  String url;
  Slack(final this.url);

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  Future<void> send(Message m) async {
    final payload = m.toString();
    await http.post(url, body: {'payload': payload});
  }
}
