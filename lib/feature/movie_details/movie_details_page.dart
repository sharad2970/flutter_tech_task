import 'package:domain/model/popular_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/di/home/home_module.dart';
import 'package:flutter_base/di/movie_details/home_module.dart';
import 'package:flutter_base/feature/home/home_page_view.dart';
import 'package:flutter_base/feature/home/home_page_view_model.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page_view.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/color_utils.dart';

class MovieDetailsPage extends BasePage<MovieDetailsPageViewModel> {
  final MovieDetailsPageArguments _arguments;
  MovieDetailsPage(this._arguments);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState
    extends BaseStatefulPage<MovieDetailsPageViewModel, MovieDetailsPage> with SingleTickerProviderStateMixin{
 TabController tabController;

  @override
  ProviderBase provideBase() => movieDetailsViewModelProvider?.call(widget._arguments);
/*

  @override
  Widget buildAppbar() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
        child: InkWell(
          child: GoalOneSvg.asset(AssetUtils.settings, fit: BoxFit.contain),
          onTap: () {
            Navigator.pushNamed(context, RoutePaths.Settings);
          },
        ),
      ),
      backgroundColor: GoalOneColor.white,
      elevation: 0.0,
    );
  }

*/

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget buildView(BuildContext context, model) {
    return MovieDetailsPageView(provideBase(), tabController: tabController);
  }
}

class MovieDetailsPageArguments{
  final PopularMovies popularMovies;

  MovieDetailsPageArguments({this.popularMovies});
}