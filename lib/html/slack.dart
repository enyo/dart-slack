library slack_html;

import 'dart:async';
import 'dart:html';

import '../src/slacksrc.dart';

export '../src/slacksrc.dart';

class Slack {
  String url;
  Slack(final this.url);

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  Future<void> send(Message m) async {
    final payload = m.toString();
    await HttpRequest.postFormData(url, {'payload': payload});
  }
}
