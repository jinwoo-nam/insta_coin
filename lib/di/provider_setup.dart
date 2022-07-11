import 'package:insta_coin/presentation/root/root_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders() {
  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<RootViewModel>(
      create: (context) => RootViewModel(),
    ),
  ];

  return viewModels;
}
