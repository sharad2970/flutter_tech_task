import 'package:carousel_slider/carousel_slider.dart';
import 'package:domain/constants/app_constant.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:drag_and_drop_lists/drag_and_drop_list.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/feature/home/home_page_view_model.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page.dart';
import 'package:flutter_base/ui/molecule/cached_network_image.dart';
import 'package:flutter_base/utils/string_utils.dart';
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
import 'package:domain/model/movies.dart';


class HomePageView extends BasePageViewWidget<HomePageViewModel> {
  HomePageView(ProviderBase model) : super(model);

   List<DragAndDropList> _contents;

  @override
  Widget build(BuildContext context, HomePageViewModel model) {
    // cWidget();
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Home Page',
                  style: TextStyle(
                      color: GoalOneColor.grass,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                      fontSize: 31.0),
                ),
              ),
            ),
            /*
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
                      : ReorderableListView.builder(
                      itemCount: movies.data.length,
                      header: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Please make order in the list below :",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: GoalOneColor.grass),
                        ),
                      ),
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
                              // Text(
                              //   movies.data[index].title ?? 'null',
                              //   style: const TextStyle(
                              //       color: GoalOneColor.black,
                              //       fontWeight: FontWeight.w600,
                              //       fontStyle: FontStyle.normal,
                              //       fontSize: 17.0),
                              // ),
                              CatchNetworkImage(
                                iconUrl: '${Constant.BASE_IMAGE_URL}${movies.data[index].backdropPath}',
                                width: 100,
                                height: 100,
                              ),
                              Icon(Icons.drag_handle_rounded),
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
            */

            Container(
                height: 150,
                child: GoalOneStreamBuilder<Resource<List<PopularMovies>>>(
                  initialData: Resource.none(),
                  stream: model.latestMoviesResponseStream,
                  dataBuilder: (context, latestMovieResponse){
                    return CarouselSlider(
                      items: _trending(context,latestMovieResponse.data),
                      options: CarouselOptions(
                      scrollPhysics: ClampingScrollPhysics(),
                          height: 150,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 500),
                          viewportFraction: 0.7
                      ),
                    );
                  },
                )),

            Expanded(
              child: GoalOneStreamBuilder<List<Movies>>(
                initialData: [],
                stream: model.movieResponseStream,
                dataBuilder: (context, movies){
                  return DragAndDropLists(
                    contentsWhenEmpty: Text(
                      'No data',
                      style: TextStyle(
                          color: GoalOneColor.black
                      ),
                    ),
                    axis: Axis.vertical,
                    itemGhostOpacity: 1,
                    listDividerOnLastChild: true,
                    children: List.generate(movies.length, (index){
                      return DragAndDropList(
                        contentsWhenEmpty: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'No data',
                            style: TextStyle(
                              color: GoalOneColor.black
                            ),
                          ),
                        ),
                          header: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '${movies[index].header}',
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: GoalOneColor.black),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          children: innerListItems(context,movies[index].movieList),
                      );
                    }),

                    onItemReorder: (oldItemIndex, oldListIndex, newItemIndex, newListIndex){
                      model.onItemReorder(oldItemIndex, oldListIndex, newItemIndex, newListIndex);
                  },
                    onListReorder:(oldListIndex, newListIndex){
                      model.onListReorder(oldListIndex, newListIndex);
                    } ,
                    listPadding: EdgeInsets.symmetric(vertical: 10),
                    itemDivider: Divider(
                      thickness: 5,
                      height: 5,
                      color: GoalOneColor.white,
                    ),
                    itemDecorationWhileDragging: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    listInnerDecoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    lastItemTargetHeight: 8,
                    addLastItemTargetHeightToTop: true,
                    lastListTargetSize: 40,
                    listDragHandle: DragHandle(
                      verticalAlignment: DragHandleVerticalAlignment.top,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.drag_handle,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    itemDragHandle: DragHandle(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.drag_handle,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }



  List<Widget> _trending(context, List<PopularMovies> data) {
    List<Widget> wList = [];

    if (data.length > 0) {
      for (int i = 0; i < data.length; i++) {
        Widget c = InkWell(
          onTap: (){
          Navigator.pushNamed(context, RoutePaths.movieDetails, arguments: MovieDetailsPageArguments(
              popularMovies: data[i]
          ));
          },
          child: Card(
            shadowColor: Colors.grey,
            elevation: 0,
            child: Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(StringUtil.getImageUrlOriginal(data[i].posterPath)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
        wList.add(c);
      }
    }
    return wList;
  }


  List<DragAndDropItem> innerListItems(context,List<PopularMovies> data){
    return List.generate(data.length, (index){
      return DragAndDropItem(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, RoutePaths.movieDetails, arguments: MovieDetailsPageArguments(
              popularMovies: data[index]
            ));
          },
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                child: Hero(
                  tag: data[index].id,
                  child: CatchNetworkImage(
                    iconUrl: StringUtil.getImageUrl500(data[index].posterPath),
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(
                        '$index. ${data[index].title}',
                        style: TextStyle(color: GoalOneColor.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

}
