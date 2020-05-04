part of 'messages.dart';

@JsonSerializable(includeIfNull: false)
class LayoutBlock {
  final LayoutBlockType type;

  @JsonKey(name: 'block_id')
  final String blockId;

  final Text text;

  final List<Text> fields;

  final List<dynamic> elements;

  final BlockElement accessory;

  LayoutBlock({
    this.type,
    this.blockId,
    this.text,
    this.fields,
    this.accessory,
    this.elements,
  });

  LayoutBlock.section({
    this.blockId,
    this.text,
    this.fields,
    this.accessory,
  })  : type = LayoutBlockType.section,
        elements = null;

  LayoutBlock.context({
    this.blockId,
    List<ContextElement> elements,
  })  : type = LayoutBlockType.context,
        elements = elements,
        text = null,
        fields = null,
        accessory = null;

  LayoutBlock.actions({
    this.blockId,
    List<BlockElement> elements,
  })  : type = LayoutBlockType.actions,
        elements = elements,
        text = null,
        fields = null,
        accessory = null;

  LayoutBlock.divider({
    this.blockId,
  })  : type = LayoutBlockType.divider,
        text = null,
        fields = null,
        accessory = null,
        elements = null;

  factory LayoutBlock.fromJson(Map<String, dynamic> json) =>
      _$LayoutBlockFromJson(json);
  Map<String, dynamic> toJson() => _$LayoutBlockToJson(this);
}

enum LayoutBlockType { actions, section, divider, image, context }

@JsonSerializable(includeIfNull: false)
class BlockElement implements ContextElement {
  final BlockElementType type;

  final Text text;

  @JsonKey(name: 'action_id')
  final String actionId;

  final String url;
  final String value;
  final ButtonStyle style;
  final bool confirm;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'alt_text')
  final String altText;

  BlockElement({
    this.type,
    this.text,
    this.actionId,
    this.url,
    this.value,
    this.style,
    this.confirm,
    this.imageUrl,
    this.altText,
  });

  BlockElement.image(
    this.imageUrl, {
    @required this.altText,
  })  : type = BlockElementType.image,
        text = null,
        actionId = null,
        url = null,
        value = null,
        style = null,
        confirm = null;

  BlockElement.button(
    this.text, {
    @required this.actionId,
    this.url,
    this.value,
    this.style,
    this.confirm,
  })  : type = BlockElementType.button,
        imageUrl = null,
        altText = null;

  factory BlockElement.fromJson(Map<String, dynamic> json) =>
      _$BlockElementFromJson(json);
  Map<String, dynamic> toJson() => _$BlockElementToJson(this);
}

enum BlockElementType {
  button,
  checkboxes,
  datepicker,
  image,
  multi_static_select,
  overflow,
  plain_text_input,
  radio_buttons,
  static_select,
}

enum ButtonStyle { primary, danger }

/// A simple interface implemented by classes that are allowed in the context
/// elements list.
abstract class ContextElement {}
