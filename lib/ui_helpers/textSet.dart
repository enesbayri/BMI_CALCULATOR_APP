
// ignore_for_file: file_names

class TextSet {
  static String homePageText = "CALCULATE YOUR BMI";
  static String heightInputLabel = "Height";
  static String weightInputLabel = "Weight";
  static String calculateButtonText = "CALCULATE";

  static String resultPageLabel = "YOUR RESULT";
  static String resultPageButtonText = "RECALCULATE";
  static String suggestion(double result){
    return (result>=25 ? "Eat less pies" : (result<18.5 ? "You should eat more" : "Your weight is ideal") );
  }
  static String soundName(double result){
    return (result>=25 ? "high" : (result<18.5 ? "low" : "norm") );
  }
  

  static String getHeightFixed(double height) {
    return "${height.toStringAsFixed(2)}m";
  }

  static String getWeightFixed(int weight) {
    return "${weight}Kg";
  }
}
