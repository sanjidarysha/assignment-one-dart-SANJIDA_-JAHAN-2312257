// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐
/// EXPECTED OUTPUT:
/// Vehicle Info: 2020 Toyota Camry (4 doors)
/// Starting the car engine...
/// Stopping the car engine...
/// 
/// Vehicle Info: 2021 Honda CBR (Has windshield: true)
/// Starting the motorcycle engine...
/// Stopping the motorcycle engine...
/// 
/// Car age: <Value> years
/// Motorcycle age: <Value> years
library;


// 1. Abstract Class Vehicle:
abstract class Vehicle {

  Vehicle(this.brand, this.model, this.year);
  String brand;
  String model;
  int year;

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    // TODO: Display vehicle information
    print('Vehicle Info: $year $brand $model');
  }

  // Add a method to calculate vehicle age (current year - vehicle year)
  int calculateAge() {
    // TODO: Calculate and return vehicle age
    var currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

// 2. Concrete Classes:

// Car class
class Car extends Vehicle {

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);
  int numberOfDoors;

  @override
  void start() {
    // TODO: Implement car start method
    print('Starting the car engine...');
  }

  @override
  void stop() {
    // TODO: Implement car stop method
    print('Stopping the car engine...');
  }

  @override
  void displayInfo() {
    // TODO: Override to show car-specific info as shown in expected output
    print('Vehicle Info: $year $brand $model ($numberOfDoors doors)');
  }
}

// Motorcycle class
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(super.brand, super.model, super.year, this.hasWindshield);

  @override
  void start() {
    // TODO: Implement motorcycle start method
    print('Starting the motorcycle engine...');
  }

  @override
  void stop() {
    // TODO: Implement motorcycle stop method
    print('Stopping the motorcycle engine...');
  }

  @override
  void displayInfo() {
    // TODO: Override to show motorcycle-specific info as shown in expected output
    print('Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)');
  }
}

void main() {
  // 3. Create a list of vehicles
  final var vehicles = <Vehicle>[
    Car('Toyota', 'Camry', 2020, 4),
    Motorcycle('Honda', 'CBR', 2021, true),
  ];

  // TODO: Loop through the list and call displayInfo(), start(), and stop()
  for (final vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print('');
  }

  // TODO: Print the age of each vehicle using calculateAge()
  print('Car age: ${vehicles[0].calculateAge()} years');
  print('Motorcycle age: ${vehicles[1].calculateAge()} years');
}
