main(){


  Set<String>names ={'Lorin','Lamin','Maliha','Lamin'};

  print(names);
  names.add('Rozi');
  print(names);
  names.addAll({'Rasin','Karim'});
  print(names);
  names.remove('Karim');
  print(names);
  print('Contain Lorin: ${names.contains('Lorin')}');
  print('Element at: ${names.elementAt(1)}');
  print("First Element : ${names.first}");
  print('Last Element : ${names.last}');


  Set<String> names2 ={'Shurfa','Samia','Lamin'};
  print("Set-1 : $names");
  print("Set-2 : $names2");

  print("Intersection value : ${names.intersection(names2)}");
  print("Union value : ${names.union(names2)}");
  names.clear();
  print(names);



}

