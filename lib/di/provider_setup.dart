import 'package:insta_coin/data/repository/article_repository_impl.dart';
import 'package:insta_coin/domain/use_case/get_article_use_case.dart';
import 'package:insta_coin/domain/use_case/get_column_use_case.dart';
import 'package:insta_coin/domain/use_case/get_events_use_case.dart';
import 'package:insta_coin/presentation/faq/faq_view_model.dart';
import 'package:insta_coin/presentation/media/media_view_model.dart';
import 'package:insta_coin/presentation/root/root_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders() {
  final mediaRepository = ArticleRepositoryImpl();

  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<RootViewModel>(
      create: (context) => RootViewModel(),
    ),
    ChangeNotifierProvider<MediaViewModel>(
      create: (context) => MediaViewModel(
        getArticle: GetArticleUseCase(mediaRepository),
        getColumn: GetColumnUseCase(mediaRepository),
        getEvents: GetEventsUseCase(mediaRepository),
      ),
    ),
    ChangeNotifierProvider<FaqViewModel>(
      create: (context) => FaqViewModel(),
    ),
  ];

  return viewModels;
}
