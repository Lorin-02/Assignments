abstract class Vehicle {
  int _speed = 0;

  move();

  void setSpeed(int speed) {
    _speed = speed;
  }

  int get speed => _speed;
}


class Car extends Vehicle {
  @override
  move() {
    print("The car is moving at ${speed} km/h");
  }
}

 main() {
  Car myCar = Car();
  myCar.setSpeed(50);
  myCar.move();
}
