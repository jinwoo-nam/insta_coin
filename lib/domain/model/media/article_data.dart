import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'article_data.freezed.dart';
part 'article_data.g.dart';

@freezed
class ArticleData with _$ArticleData {
  factory ArticleData({
    required String title,
    required String imageUrl,
    required String articleUrl,
  }) = _ArticleData;
  factory ArticleData.fromJson(Map<String, dynamic> json) => _$ArticleDataFromJson(json);
}