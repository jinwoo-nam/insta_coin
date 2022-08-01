import 'package:insta_coin/data/repository/article_repository_impl.dart';
import 'package:insta_coin/data/repository/get_coin_repository_impl.dart';
import 'package:insta_coin/data/repository/hoem_repository_impl.dart';
import 'package:insta_coin/data/repository/papps_repository_impl.dart';
import 'package:insta_coin/data/repository/team_repository_impl.dart';
import 'package:insta_coin/domain/use_case/get_coin/get_coin_use_case.dart';
import 'package:insta_coin/domain/use_case/home/get_papps_main_use_case.dart';
import 'package:insta_coin/domain/use_case/home/get_why_insta_data_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_article_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_coin_article_column_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_column_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_events_use_case.dart';
import 'package:insta_coin/domain/use_case/papps/get_papps_use_case.dart';
import 'package:insta_coin/domain/use_case/team/get_team_data_use_case.dart';
import 'package:insta_coin/presentation/faq/faq_view_model.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/presentation/home/home_view_model.dart';
import 'package:insta_coin/presentation/media/media_view_model.dart';
import 'package:insta_coin/presentation/papps/papps_view_model.dart';
import 'package:insta_coin/presentation/team/team_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders() {
  final mediaRepository = ArticleRepositoryImpl();
  final homeRepository = HomeRepositoryImpl();

  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(
        getWhyInstaData: GetWhyInstaDataUseCase(homeRepository),
        getPappsData: GetPappsMainUseCase(homeRepository),
      ),
    ),
    ChangeNotifierProvider<PappsViewModel>(
      create: (context) => PappsViewModel(
        getPappsData: GetPappsUseCase(PappsRepositoryImpl()),
      ),
    ),
    ChangeNotifierProvider<TeamViewModel>(
      create: (context) => TeamViewModel(
        getTeam: GetTeamDataUseCase(TeamRepositoryImpl()),
      ),
    ),
    ChangeNotifierProvider<GetCoinViewModel>(
      create: (context) => GetCoinViewModel(
        getCoin: GetCoinUseCase(
          GetCoinRepositoryImpl(),
        ),
      ),
    ),
    ChangeNotifierProvider<MediaViewModel>(
      create: (context) => MediaViewModel(
        getArticle: GetArticleUseCase(mediaRepository),
        getColumn: GetColumnUseCase(mediaRepository),
        getEvents: GetEventsUseCase(mediaRepository),
        getArticleColumn: GetCoinArticleColumnUseCase(mediaRepository),
      ),
    ),
    ChangeNotifierProvider<FaqViewModel>(
      create: (context) => FaqViewModel(),
    ),
  ];

  return viewModels;
}
