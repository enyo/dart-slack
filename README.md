# Dart [slack](http://slack.com) API library

This library interacts with the
[Slack Webhook API](https://api.slack.com/messaging/webhooks).

It will allow you to post (formatted) messages into your Slack channels after
you've created a Slack App and got the webhook link to post to (instructions
are on the Slack Webhook API page).

This library works on the server and in the browser. Just be aware that if you
use this in your browser, you're going to expose your API key.

## Simple Start

    import 'package:slack/slack';
    
    main() async {
      Slack slack = new Slack('webhook-url');
      final httpResponse =
            await slack.send(Message(text: 'This is your computer talking.'));
    }


See the [example/example.dart] on how to use blocks in your messages.

# License

[CC0 1.0 Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/deed)