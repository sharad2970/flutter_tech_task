import 'package:carousel_slider/carousel_slider.dart';
import 'package:domain/constants/app_constant.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:drag_and_drop_lists/drag_and_drop_list.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/feature/home/home_page_view_model.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page_viewmodel.dart';
import 'package:flutter_base/ui/molecule/cached_network_image.dart';
import 'package:flutter_base/ui/molecule/horizontal_scroll.dart';
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

// CatchNetworkImage(
// iconUrl: '${Constant.BASE_IMAGE_URL_500}/gGTCDNEvwG848u34Op1nZNALLUr.jpg',
// width: MediaQuery.of(context).size.width,
// height: 300,
// ),


class MovieDetailsPageView extends BasePageViewWidget<MovieDetailsPageViewModel> {
  MovieDetailsPageView(ProviderBase model, {this.tabController}) : super(model);
 final TabController tabController;


  @override
  Widget build(BuildContext context, MovieDetailsPageViewModel model) {
    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth / 24;
    double yourWidth = (orjWidth - cameraWidth) / 5;

    return CustomScrollView(
      primary: true,
      slivers: [
        SliverAppBar(
                backgroundColor: GoalOneColor.white,
                expandedHeight: 300.0,
                floating: true,
                pinned: true,
                snap: true,
                primary: true,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                    child: Hero(
                      tag: model.movieDetailsArguments.popularMovies.id,
                      child: Image.network(StringUtil.getImageUrlOriginal(model.movieDetailsArguments.popularMovies.posterPath),
                      fit: BoxFit.cover,
                      ),
                    )
                  ),
                ],
                ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(48.0),
                child: Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.white),
                  // take the theme of current context and copy with => white so it will act as accent color for this
                  child: Container(
                    height: 48.0,
                    color: GoalOneColor.white,
                    alignment: Alignment.center,
                    child: TabBar(
                      labelStyle: TextStyle(
                        color: GoalOneColor.black,
                         fontWeight: FontWeight.bold,
                      ),
                      physics: ClampingScrollPhysics(),
                      controller: tabController,
                      labelColor: Colors.black,
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
                      indicatorColor: GoalOneColor.grass,
                      unselectedLabelColor: Colors.grey,
                      tabs: <Widget>[
                        Container(width: yourWidth, child: Tab(text: "DETAILS")),
                        Container(
                          width: yourWidth,
                          child: Tab(
                            text: "TOP RATED",
                          ),
                        ),
                        Container(
                          width: yourWidth,
                          child: Tab(
                            text: "UPCOMING",
                          ),
                        ),
                        Container(
                            width: cameraWidth,
                            alignment: Alignment.center,
                            color: GoalOneColor.white,
                            child: Tab(icon: Icon(Icons.camera_alt))),
                      ],
                    ),
                  ),
                )),
            ),

        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  physics: ClampingScrollPhysics(),
                  controller: tabController,
                  children:<Widget>[

                    ListView(
                      primary: false,
                      scrollDirection: Axis.vertical,
                      physics: ClampingScrollPhysics(),
                      children: <Widget>[
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('${model.movieDetailsArguments.popularMovies.title}'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: GoalOneColor.black
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          'Adventure. Family. Fantasy',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        rattingBar(),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0,top: 20.0, right: 20.0),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Year',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '2019',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: GoalOneColor.black
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Country',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    'USA',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: GoalOneColor.black
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Length',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '125 min',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: GoalOneColor.black
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        child: Text('${model.movieDetailsArguments.popularMovies.overview}',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          softWrap: true,
                        ),
                      ),

                     GoalOneStreamBuilder<Resource<List<PopularMovies>>>(
                         initialData: Resource.none(),
                         stream: model.similarMoviesResponseStream,
                         dataBuilder: (context, similarMovies){
                          return (similarMovies.status == Status.LOADING)
                              ? circularProgressIndicator()
                              : (similarMovies.data == null || similarMovies.data.length == 0)
                              ? Center(
                                  child:  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'No data found',
                                      style: const TextStyle(
                                       color: GoalOneColor.black,
                                       fontWeight: FontWeight.w600,
                                       fontStyle: FontStyle.normal,
                                       fontSize: 15.0),
                                      ),
                                  ),
                                ) : HorizontalScrollView(
                                     images: model.getImageList(similarMovies.data),
                                     title: 'Similar Category',
                                      imageHeight: 200.0,
                                      imageWidth: 230.0,
                                    );
                          },
                      ),
                   ],
                  ),

                    Container(
                      child: GoalOneStreamBuilder<Resource<List<PopularMovies>>>(
                        initialData: Resource.none(),
                        stream: model.similarMoviesResponseStream,
                        dataBuilder: (context, data) {
                          return data.status == Status.LOADING
                              ? circularProgressIndicator()
                              : Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                child: GridView.builder(
                                  primary: false,
                                  scrollDirection: Axis.vertical,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 18,
                                    mainAxisSpacing: 18,
                                    childAspectRatio: (2 / 1.5),
                                  ),
                                itemCount: data.data.length,
                                itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 0,),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0.0, 4.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: CatchNetworkImage(
                                        iconUrl: StringUtil.getImageUrl500(data.data[index].posterPath),
                                      )
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        onData: (data) {},
                      ),
                    ),






                    Container(
                      width: yourWidth,
                      child: Tab(
                        text: "CALLS",
                      ),
                    ),
                    Container(
                        width: cameraWidth,
                        alignment: Alignment.center,
                        color: GoalOneColor.white,
                        child: Tab(icon: Icon(Icons.camera_alt))),
                  ]

                ),
              ),
            ],
          ),
        ),

      ],



        /*
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    backgroundColor: GoalOneColor.white,
                    expandedHeight: 200.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    primary: true,
                     actionsIconTheme: IconThemeData(opacity: 0.0),
                    flexibleSpace: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Image.network(
                              "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                              fit: BoxFit.cover,
                            ))
                      ],
                    ),
                  ),

                  SliverPadding(
                    padding: EdgeInsets.all(16.0),
                    sliver: SliverList(delegate: SliverChildListDelegate([

                        TabBar(
                          labelColor: Colors.black87,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(icon: Icon(Icons.info), text: "Tab 1"),
                            Tab(
                                icon: Icon(Icons.lightbulb_outline),
                                text: "Tab 2"),
                          ],
                        ),
                      ]),
                    ),
                  ),

                ];
              },
              body: Center(
                child: Text("Sample text"),
              ),
            ),
          ));
      */

       /*
        body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                centerTitle: true,
                title: Text('Sharad', style: TextStyle(color: GoalOneColor.white),),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: Image.network(
                            "https://image.tmdb.org/t/p/original/gGTCDNEvwG848u34Op1nZNALLUr.jpg",
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                ),


               pinned: true,

                // bottom: PreferredSize(
                //   preferredSize: Size.fromHeight(48.0),
                //     child: Theme(
                //       data: Theme.of(context).copyWith(accentColor: Colors.white),
                //       // take the theme of current context and copy with => white so it will act as accent color for this
                //       child: Container(
                //         height: 48.0,
                //         alignment: Alignment.center,
                //         child: TabPageSelector(
                //           controller: tabController,
                //         ),
                //       ),
                //     )
                // ),


              bottom:  TabBar(
                  labelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
                  controller: tabController,
                  indicatorColor: GoalOneColor.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Container(
                        width: cameraWidth,
                        alignment: Alignment.center,
                        child: Tab(icon: Icon(Icons.camera_alt))),
                    Container(width: yourWidth, child: Tab(text: "CHATS")),
                    Container(
                      width: yourWidth,
                      child: Tab(
                        text: "STATUS",
                      ),
                    ),
                    Container(
                      width: yourWidth,
                      child: Tab(
                        text: "CALLS",
                      ),
                    ),
                  ],
                ),



              ),
            ],
        ),
        */


       /*
        appBar: AppBar(
          title: Text('Tabbar View'),
          backgroundColor: Colors.red,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
              child: Theme(
                data: Theme.of(context).copyWith(accentColor: Colors.white),
                // take the theme of current context and copy with => white so it will act as accent color for this
                child: Container(
                  height: 48.0,
                  alignment: Alignment.center,
                  child: TabPageSelector(
                    controller: tabController,
                  ),
                ),
              )
          ),
        ),
        */

      /*
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbar View'),
          backgroundColor: Colors.red,
          bottom: TabBar(
            labelColor: Colors.grey,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
            controller: tabController,
            indicatorColor: GoalOneColor.white,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Container(
                  width: cameraWidth,
                  alignment: Alignment.center,
                  child: Tab(icon: Icon(Icons.camera_alt))),
              Container(width: yourWidth, child: Tab(text: "CHATS")),
              Container(
                width: yourWidth,
                child: Tab(
                  text: "STATUS",
                ),
              ),
              Container(
                width: yourWidth,
                child: Tab(
                  text: "CALLS",
                ),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          controller: tabController,
          children: model.tabItems.map((Choice choice) {
            return Container(
              padding: EdgeInsets.all(25.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(choice.title),
                    Icon(choice.icon, size: 128.0),
                  ],
                ),
              ),
            );
          }).toList(),
        ),




      ),
      */


    );
  }
  Row rattingBar() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
      ],
    );
  }
}


class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}