main(){

  int intNumber=20;
  String name='Lorin';
  bool isTrue=false;
  double number2=10.22;

  print(intNumber);
  print(name);
  print(isTrue);
  print(number2);

  //////////////////////////////////////

  String firstName='Maliha';
  String lastName='Lorin';
  String fullName=('$firstName  $lastName');

  print(fullName);
  print(firstName.length);
  print(lastName.length);
  print(firstName.toUpperCase());
  print(fullName.contains('Lorin'));
  print(fullName.contains('Lorinn'));

///////////////////////////////////////////////

  var person = 'Lamin';

  person='samia';
  //person=20; //not allow
  print(person);
  print(person.runtimeType);

  ///////////////////////////////////////////

  dynamic person2 =  'Rahimul';
  person2 =16;
  person2= 20.22;

  print(person2);
  print(person2.runtimeType);

  //////////////////////////////////////

  int number3 =8;
  int number4 =32;
  String number5="20";

  print("Sum : ${(number3+number4) }");
  print("Sub : ${(number4-number3) }");
  print("Mul : ${(number3*number4) }");
  print("Div : ${(number4/number3) }");

  /////////////////////////////////////////////////////

  print("Sum : ${(number3+ int.parse(number5)) }");

  





}