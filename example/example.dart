import 'package:slack/slack.dart';

void main() async {
  // You get this URL when creating an App.
  // Follow these instructions: https://api.slack.com/messaging/webhooks
  final slack = Slack('https://hooks.slack.com/services/YOUR_API_KEY');

  // Send a simple text message.
  // By default the text is markdown enabled (with a strange syntax for links.)
  // See the official doc for formatting:
  //   https://api.slack.com/reference/surfaces/formatting
  await slack.send(Message(
      text: 'This is your *computer* talking. <https://dart.dev|Some link>.'));

  // So now for a more complicated message, that consists of multiple blocks.
  // First build the message here...
  final message = Message(blocks: [
    LayoutBlock.section(text: Text('*Some single line text*')),
    LayoutBlock.divider(),
    LayoutBlock.section(
      text: Text('Text that goes alongside an image.'),
      accessory: BlockElement.image(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Futurama_Planet_Express.svg/2000px-Futurama_Planet_Express.svg.png',
          altText: 'Image alt text'),
    ),
    LayoutBlock.context(elements: [
      BlockElement.image(
          'https://image.freepik.com/free-photo/red-drawing-pin_1156-445.jpg',
          altText: 'pin'),
      Text(
        'Some info',
      )
    ]),
  ]);

  // ...and then send it
  await slack.send(message);
}
