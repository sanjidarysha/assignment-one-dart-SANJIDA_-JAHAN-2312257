// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/// EXPECTED OUTPUT:
/// Name: John Doe, Age: 25, Height: 5.9, Is Student: true
/// BMI: 22.5
/// Grade: B
library;

// 1. Create variables of different data types: String, int, double, bool
// TODO: Add your variables here
String name = 'John Doe';
int age = 25;
double height = 5.9;
bool isStudent = true;

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// TODO: Implement the calculateBMI function
double calculateBMI(double weight, double height) => weight / (height * height);

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// TODO: Implement the getGrade function
String getGrade(int score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  var weight = 78.3;
  var score = 85;

  var bmi = calculateBMI(weight, height);
  var grade = getGrade(score);

  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('BMI: ${bmi.toStringAsFixed(1)}');
  print('Grade: $grade');
}
