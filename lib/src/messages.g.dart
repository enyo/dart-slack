// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    text: json['text'] as String,
    blocks: (json['blocks'] as List)
        ?.map((e) =>
            e == null ? null : LayoutBlock.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('blocks', instance.blocks);
  return val;
}

Text _$TextFromJson(Map<String, dynamic> json) {
  return Text(
    json['text'] as String,
    type: _$enumDecodeNullable(_$TextTypeEnumMap, json['type']),
    emoji: json['emoji'] as bool,
    verbatim: json['verbatim'] as bool,
  );
}

Map<String, dynamic> _$TextToJson(Text instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$TextTypeEnumMap[instance.type]);
  writeNotNull('text', instance.text);
  writeNotNull('emoji', instance.emoji);
  writeNotNull('verbatim', instance.verbatim);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$TextTypeEnumMap = {
  TextType.mrkdwn: 'mrkdwn',
  TextType.plain_text: 'plain_text',
};

LayoutBlock _$LayoutBlockFromJson(Map<String, dynamic> json) {
  return LayoutBlock(
    type: _$enumDecodeNullable(_$LayoutBlockTypeEnumMap, json['type']),
    blockId: json['block_id'] as String,
    text: json['text'] == null
        ? null
        : Text.fromJson(json['text'] as Map<String, dynamic>),
    fields: (json['fields'] as List)
        ?.map(
            (e) => e == null ? null : Text.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accessory: json['accessory'] == null
        ? null
        : BlockElement.fromJson(json['accessory'] as Map<String, dynamic>),
    elements: json['elements'] as List,
  );
}

Map<String, dynamic> _$LayoutBlockToJson(LayoutBlock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$LayoutBlockTypeEnumMap[instance.type]);
  writeNotNull('block_id', instance.blockId);
  writeNotNull('text', instance.text);
  writeNotNull('fields', instance.fields);
  writeNotNull('elements', instance.elements);
  writeNotNull('accessory', instance.accessory);
  return val;
}

const _$LayoutBlockTypeEnumMap = {
  LayoutBlockType.actions: 'actions',
  LayoutBlockType.section: 'section',
  LayoutBlockType.divider: 'divider',
  LayoutBlockType.image: 'image',
  LayoutBlockType.context: 'context',
};

BlockElement _$BlockElementFromJson(Map<String, dynamic> json) {
  return BlockElement(
    type: _$enumDecodeNullable(_$BlockElementTypeEnumMap, json['type']),
    text: json['text'] == null
        ? null
        : Text.fromJson(json['text'] as Map<String, dynamic>),
    actionId: json['action_id'] as String,
    url: json['url'] as String,
    value: json['value'] as String,
    style: _$enumDecodeNullable(_$ButtonStyleEnumMap, json['style']),
    confirm: json['confirm'] as bool,
    imageUrl: json['image_url'] as String,
    altText: json['alt_text'] as String,
  );
}

Map<String, dynamic> _$BlockElementToJson(BlockElement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$BlockElementTypeEnumMap[instance.type]);
  writeNotNull('text', instance.text);
  writeNotNull('action_id', instance.actionId);
  writeNotNull('url', instance.url);
  writeNotNull('value', instance.value);
  writeNotNull('style', _$ButtonStyleEnumMap[instance.style]);
  writeNotNull('confirm', instance.confirm);
  writeNotNull('image_url', instance.imageUrl);
  writeNotNull('alt_text', instance.altText);
  return val;
}

const _$BlockElementTypeEnumMap = {
  BlockElementType.button: 'button',
  BlockElementType.checkboxes: 'checkboxes',
  BlockElementType.datepicker: 'datepicker',
  BlockElementType.image: 'image',
  BlockElementType.multi_static_select: 'multi_static_select',
  BlockElementType.overflow: 'overflow',
  BlockElementType.plain_text_input: 'plain_text_input',
  BlockElementType.radio_buttons: 'radio_buttons',
  BlockElementType.static_select: 'static_select',
};

const _$ButtonStyleEnumMap = {
  ButtonStyle.primary: 'primary',
  ButtonStyle.danger: 'danger',
};
