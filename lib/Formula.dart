import 'dart:math';
double bmi=0;
class Logic{
double calculate(int height, int weight){
   bmi= weight/pow(height/100,2);
  return bmi;
}
String message() {
  if (bmi >= 25) {
    return 'Overweight';
  } else if (bmi > 18.5) {
    return 'Normal';
  } else {
    return 'Underweight';
  }
}

String massage2() {
  if (bmi >= 25) {
    return 'You have a higher than normal body weight. Try to lose weight\n';
  } else if (bmi >= 18.5) {
    return 'You have a normal body weight. Good job!\n ';
  } else {
    return 'You have a lower than normal body weight. You can gain a weight.\n ';
  }
}}