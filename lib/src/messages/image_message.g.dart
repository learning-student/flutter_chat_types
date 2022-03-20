// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageMessage _$ImageMessageFromJson(Map<String, dynamic> json) {
  return ImageMessage(
    author: User.fromJson(json['author'] as Map<String, dynamic>),
    createdAt: json['createdAt'] as int?,
    height: (json['height'] as num?)?.toDouble(),
    id: json['id'] as String,
    metadata: json['metadata'] as Map<String, dynamic>?,
    name: json['name'] as String,
    remoteId: json['remoteId'] as String?,
    roomId: json['roomId'] as String?,
    size: json['size'] as num,
    status: _$enumDecodeNullable(_$StatusEnumMap, json['status']),
    type: _$enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
    updatedAt: json['updatedAt'] as int?,
    uri: json['uri'] as String,
    width: (json['width'] as num?)?.toDouble(),
    thumbnail: json['thumbnail'] as String?,
  );
}

Map<String, dynamic> _$ImageMessageToJson(ImageMessage instance) {
  final val = <String, dynamic>{
    'author': instance.author.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt);
  val['id'] = instance.id;
  writeNotNull('metadata', instance.metadata);
  writeNotNull('remoteId', instance.remoteId);
  writeNotNull('roomId', instance.roomId);
  writeNotNull('status', _$StatusEnumMap[instance.status]);
  val['type'] = _$MessageTypeEnumMap[instance.type];
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('height', instance.height);
  val['name'] = instance.name;
  val['size'] = instance.size;
  val['uri'] = instance.uri;
  writeNotNull('width', instance.width);
  writeNotNull('thumbnail', instance.thumbnail);
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$StatusEnumMap = {
  Status.delivered: 'delivered',
  Status.error: 'error',
  Status.seen: 'seen',
  Status.sending: 'sending',
  Status.sent: 'sent',
};

const _$MessageTypeEnumMap = {
  MessageType.custom: 'custom',
  MessageType.file: 'file',
  MessageType.image: 'image',
  MessageType.text: 'text',
  MessageType.unsupported: 'unsupported',
};
