// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RootState _$$_RootStateFromJson(Map<String, dynamic> json) => _$_RootState(
      curPage: $enumDecodeNullable(_$PageSelectTypeEnumMap, json['curPage']) ??
          PageSelectType.home,
    );

Map<String, dynamic> _$$_RootStateToJson(_$_RootState instance) =>
    <String, dynamic>{
      'curPage': _$PageSelectTypeEnumMap[instance.curPage]!,
    };

const _$PageSelectTypeEnumMap = {
  PageSelectType.home: 'home',
  PageSelectType.papps: 'papps',
  PageSelectType.team: 'team',
  PageSelectType.media: 'media',
  PageSelectType.faq: 'faq',
};
