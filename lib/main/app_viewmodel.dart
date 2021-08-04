import 'package:domain/constants/enum/language_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/base/base_view_model.dart';
import 'package:flutter_base/utils/color_utils.dart';


GlobalKey<NavigatorState> appLevelKey = GlobalKey(debugLabel: 'app-key');

class AppViewModel extends BaseViewModel {
  ThemeData _themeData = ThemeData();
  GoalOneTheme _goalOneTheme = GoalOneTheme.light;

  GoalOneTheme get goalOneTheme => _goalOneTheme;


  Locale _currentLocale = Locale('en');

  Locale get currentLocale => _currentLocale;

  void toggleLocale(LanguageEnum locale) {
    print("toggleLocale $locale");
    _currentLocale = Locale(locale.toString());
    notifyListeners();
  }

  ThemeData get themeData {
    // based on platform WidgetsBinding.instance.window.platformBrightness
    switch (_goalOneTheme) {
      case GoalOneTheme.dark:
        _themeData = _themeData.copyWith(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: GoalOneColor.white,
          accentColor: GoalOneColor.darkBlueGrey,
          primaryColor: GoalOneColor.grass,
          appBarTheme: AppBarTheme(color: GoalOneColor.white, elevation: 0),
          primaryColorDark: GoalOneColor.darkBlueGreen,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: GoalOneColor.grass,
            selectionHandleColor: GoalOneColor.grass,
            selectionColor: GoalOneColor.pinkishGreyTwo,
          ),
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.pinkishGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              fillColor: GoalOneColor.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.pinkishGrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: GoalOneColor.grass, width: 1)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.orangeRed, width: 1)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.orangeRed, width: 1)),
              errorStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.orangeRed,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: 1,
              ),
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.greyishBrown,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.7,
              )),
          textTheme: _themeData.textTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          accentTextTheme: _themeData.accentTextTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          primaryTextTheme: _themeData.primaryTextTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          iconTheme: IconThemeData(
            color: GoalOneColor.blackTwo,
          ),
          indicatorColor: GoalOneColor.white,
          buttonTheme: ButtonThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            textTheme: ButtonTextTheme.normal,
          ),
        );
        break;
      case GoalOneTheme.light:
        _themeData = _themeData.copyWith(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: GoalOneColor.white,
          accentColor: GoalOneColor.darkBlueGrey,
          primaryColor: GoalOneColor.grass,
          appBarTheme: AppBarTheme(color: GoalOneColor.white, elevation: 0),
          primaryColorDark: GoalOneColor.darkBlueGreen,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: GoalOneColor.grass,
            selectionHandleColor: GoalOneColor.grass,
            selectionColor: GoalOneColor.pinkishGreyTwo,
          ),
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.pinkishGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              fillColor: GoalOneColor.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.pinkishGrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: GoalOneColor.grass, width: 1)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.orangeRed, width: 1)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: GoalOneColor.orangeRed, width: 1)),
              errorStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.orangeRed,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: 1,
              ),
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: GoalOneColor.greyishBrown,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.7,
              )),
          textTheme: _themeData.textTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          accentTextTheme: _themeData.accentTextTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          primaryTextTheme: _themeData.primaryTextTheme.apply(
              fontFamily: 'Montserrat',
              bodyColor: GoalOneColor.white,
              displayColor: GoalOneColor.white),
          iconTheme: IconThemeData(
            color: GoalOneColor.blackTwo,
          ),
          indicatorColor: GoalOneColor.white,
          buttonTheme: ButtonThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            textTheme: ButtonTextTheme.normal,
          ),
        );
        break;
    }

    return _themeData;
  }

  ThemeData toggleTheme() {
    if (_goalOneTheme == GoalOneTheme.dark) {
      _goalOneTheme = GoalOneTheme.light;
    } else {
      _goalOneTheme = GoalOneTheme.dark;
    }
    return themeData;
  }



  AppViewModel() {}



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

enum GoalOneTheme {
  dark,
  light,
}
