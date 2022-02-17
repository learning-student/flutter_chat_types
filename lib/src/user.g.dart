// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    createdAt: json['createdAt'] as int?,
    firstName: json['firstName'] as String?,
    id: json['id'] as String,
    imageUrl: json['imageUrl'] as String?,
    lastName: json['lastName'] as String?,
    lastSeen: json['lastSeen'] as int?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    role: _$enumDecodeNullable(_$RoleEnumMap, json['role']),
    updatedAt: json['updatedAt'] as int?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('firstName', instance.firstName);
  val['id'] = instance.id;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('lastSeen', instance.lastSeen);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('updatedAt', instance.updatedAt);
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

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.agent: 'agent',
  Role.moderator: 'moderator',
  Role.user: 'user',
};
