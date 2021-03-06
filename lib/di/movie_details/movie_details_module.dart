import 'package:flutter_base/di/usecases/home_use_case.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page.dart';
import 'package:flutter_base/feature/movie_details/movie_details_page_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieDetailsViewModelProvider = ChangeNotifierProvider.autoDispose
    .family<MovieDetailsPageViewModel, MovieDetailsPageArguments>((ref, args) =>
        MovieDetailsPageViewModel(ref.read(homeUseCaseProvider), args));
