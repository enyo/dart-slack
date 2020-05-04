import 'dart:convert';

import 'package:slack/slack.dart';
import 'package:test/test.dart';

/// Simply converts the given message to json and then decodes it again.
///
/// I decided to do it this way instead of matching the strings, because I don't
/// want the strings to start failing in case there is a change in the
/// formatting of the JSON strings since that is not what I'm testing for here.
Map<String, dynamic> _toMap(message) => jsonDecode(jsonEncode(message));

void main() {
  group('Messages', () {
    group('Message.toJson()', () {
      test('omits null values', () {
        final m = Message(text: 'foo');
        expect(_toMap(m), {'text': 'foo'});
      });
      test('properly embeds blocks', () {
        final m = Message(
          blocks: [
            LayoutBlock.section(
              text: Text('Text'),
              fields: [Text('Field 1')],
            ),
          ],
        );
        expect(_toMap(m), {
          'blocks': [
            {
              'type': 'section',
              'text': {'type': 'mrkdwn', 'text': 'Text'},
              'fields': [
                {'type': 'mrkdwn', 'text': 'Field 1'}
              ]
            }
          ]
        });
      });
    });
    group('Block.toJson()', () {
      test('handles type properly', () {
        final m = LayoutBlock.section(text: Text('foo'));
        expect(_toMap(m), {
          'type': 'section',
          'text': {'type': 'mrkdwn', 'text': 'foo'}
        });
      });
    });
  });
}
