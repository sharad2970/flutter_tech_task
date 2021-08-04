import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/main/app_viewmodel.dart';

ChangeNotifierProvider<AppViewModel> appViewModel =
    ChangeNotifierProvider<AppViewModel>(
  (ref) => AppViewModel(),
);
