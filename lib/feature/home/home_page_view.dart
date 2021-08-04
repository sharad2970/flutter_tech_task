import 'package:domain/model/leagues/league_list_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/feature/home/home_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/ui/molecule/stream_builder/goal_one_stream_builder.dart';
import 'package:flutter_base/ui/molecule/widgets/widget.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/color_utils.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:flutter_base/utils/status.dart';
import 'package:domain/model/popular_movies.dart';

class HomePageView extends BasePageViewWidget<HomePageViewModel> {
  HomePageView(ProviderBase model) : super(model);

  @override
  Widget build(BuildContext context, HomePageViewModel model) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Title',
                  style: TextStyle(
                      color: GoalOneColor.grass,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                      fontSize: 31.0),
                ),
              ),
            ),
            Expanded(
              child: GoalOneStreamBuilder<Resource<List<PopularMovies>>>(
                initialData: Resource.none(),
                stream: model.movieResponseStream,
                onData: (data) {
                },
                dataBuilder: (context, movies) {
                  return movies.status == Status.LOADING
                      ? Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            child: circularProgressIndicator(),
                    ),
                    )
                      : (movies.data == null || movies.data.length == 0)
                      ? Center(
                        child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                GoalOneSvg.asset(AssetUtils.bell),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  'No data found',
                                  style: const TextStyle(
                                    color: GoalOneColor.black,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0),
                              ),
                            ),
                          ],
                        )),
                  )

                  /*
                      : ListView.builder(
                        padding: const EdgeInsets.only(top: 20),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: ClampingScrollPhysics(),
                        itemCount: movies.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            splashColor: GoalOneColor.grass,
                            onTap: () async {
                              // var result = await Navigator.pushNamed(
                              //     context, RoutePaths.LeagueHome,
                              //     arguments: LeagueHomeArguments(
                              //     leagues: data.data.list[index],
                              //     isFromNotification: true));

                              },
                            child: Container(
                              height: 62,
                              margin: const EdgeInsets.only(bottom: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5)),
                                color: GoalOneColor.white,
                                border: Border.all(
                                    color: GoalOneColor.grass,
                                    width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    movies.data[index].title ?? 'null',
                                    style: const TextStyle(
                                        color: GoalOneColor.black,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17.0),
                                  ),
                                  GoalOneSvg.asset(
                                      AssetUtils.rightArrow,
                                      color: GoalOneColor.grass),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  */
                  : ReorderableListView.builder(

                      itemCount: movies.data.length,
                      itemBuilder: (context, index) {

                        return  Container(
                          key: Key('$index'),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: GoalOneColor.white,
                            border: Border.all(
                                color: GoalOneColor.grass,
                                width: 0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              Text(
                                movies.data[index].title ?? 'null',
                                style: const TextStyle(
                                    color: GoalOneColor.black,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 17.0),
                              ),
                              GoalOneSvg.asset(
                                  AssetUtils.rightArrow,
                                  color: GoalOneColor.grass),
                            ],
                          ),
                        );
                      },
                     onReorder: (oldIndex, newIndex){
                      model.updateSelection(oldIndex, newIndex, movies.data);
                    },

                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
