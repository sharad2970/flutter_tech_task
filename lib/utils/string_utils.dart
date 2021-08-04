class StringUtil {
  StringUtil._();

  /// get capitalized word
  static String getCapitalizedWord(String inputString){
    if(inputString.isNotEmpty){
      return "${inputString[0].toUpperCase()}${inputString.substring(1)}";
    }
    return "";
  }
}
