main(){

  var person ={

   //'name' :"Lorin",
    'name':['Lorin','Maliha'],
    'age': 23,
    'experience':" 7 years"

  };

  Map<String,String> person2 = {
    'name':'Maliha',
    'experience':" 8 years"

  };




  print(person);
  print(person['name']);
  print(person['age']);
  person['Address']="Dhaka";
  print(person);
  person['age']=24;
  print(person);
  person.remove('experience');
  print(person);
  print(person.containsKey('name'));
  print(person.containsValue('age'));
  print(person.keys);
  print(person.values);
  print(person.length);


  var additionalInfo ={

    'Subject' : 'CSE',
    'CGPA' : 3.80

  };
  person.addAll(additionalInfo);
  print(person);

  var KeyList = person.keys.toList();
  var ValueList = person.values.toList();

  print(KeyList);
  print(ValueList);
  print(person2);


}