import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'blocks.dart';
part 'messages.g.dart';

String url;

/// A message passed between your app and slack.
@JsonSerializable(includeIfNull: false)
class Message {
  /// For a simple message, your JSON payload must contain a [text] property.
  /// This is the text that will be posted to the channel.
  final String text;

  /// Any number of [Attachment]s can be added to the message
  @JsonKey()
  final List<LayoutBlock> blocks;

  /// Creates a [Message] object which can be sent to a Slack channel
  Message({
    this.text,
    this.blocks,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Text implements ContextElement {
  final TextType type;

  final String text;

  final bool emoji;

  final bool verbatim;

  Text(this.text, {this.type = TextType.mrkdwn, this.emoji, this.verbatim});

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);
  Map<String, dynamic> toJson() => _$TextToJson(this);
}

enum TextType { mrkdwn, plain_text }
