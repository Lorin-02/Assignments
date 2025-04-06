import 'dart:io';

main()
{

   print("Enter Your Name :");
   String ? name = stdin.readLineSync();
   print("User name : $name");

   print("Enter Your Age :");
   int ? age = int.tryParse(stdin.readLineSync()!);

   print('Welcome to Dart ${name?.toUpperCase()} \n your age is $age');
}