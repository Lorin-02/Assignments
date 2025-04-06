
import 'dart:io';
main() {

  int number_1 =10;
  String name = 'Lorin';
  bool isTrue = false;
  double number_2 =20.10;

  print(number_1);
  print("$name");
  print("$name  $number_1 $number_2");
  print("${name } $number_1  $number_2");

  String FirstName = 'Shurfa';
  String LastName = 'Lorin';
  String FullName = '$FirstName $LastName';

  print(FullName);
  print(FirstName.length);
  print(FullName.toUpperCase());
  print(LastName.toLowerCase());
  print(FullName.contains("Lorinn"));

  print("Enter your Name");
  String ? name1 = stdin.readLineSync();

  print("Enter your Age");
  int ? age = int.tryParse(stdin.readLineSync()!);
  print ("Welcome to dart ${name.toUpperCase() } and the age is $age");



}