void main(){
  print("Hello Dart");

  //variables
  //Number
  var a=10;
  var b=20;
  var c=10.3526;
  print(a+b+c);

  //String
  var string= "My name is Lamin";
  print(string);

  //Boolean
  var student= true;
  print(student);

  //List
  print("List");
  var list=[20,10,30];
  print(list);
  print(list[0]);

  //Map
  print("Map");
  var person= {'Name' : 'Lamin', 'Age' : 22, 'Height' : '5 Feet 6 Inch', 'Address' : 'Mohammadpur'};
  print(person);
  print(person['Address']);

  //Arithmatic Operator
  print("Arithmatic Operator");
  var x=75;
  var y=48;
  print(x+y);
  print(x-y);
  print(x*y);
  print(x/y);
  print(x%y);

  //Unary operator
  print("Unary operator");
  var j=20;
  print(j++);
  print(++j);
  print(j--);
  print(--j);

  //List functions
  print("List function");
  var l=['Lamin', 'Lorin', 'Mrittika', 'Taufik', 'Binti'];
  var result= l.length;
  print(result);
  var result1= l.reversed;
  print(result1);
  var result2= l.isEmpty;
  print(result2);
  var result3= l.first;
  print(result3);


  print("Fixed Length List");
  const list2=['A', 'B', 'C'];
  print(list2);

  //Insert Elements in list
  list.add(30);
  print(list);
  list.addAll([29,34,56]);
  print(list);
  list.insert(2,300);
  print(list);
  list.insertAll(3, [200,300,400]);
  print(list);

}