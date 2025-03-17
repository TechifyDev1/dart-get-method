import 'dart:convert';

import 'package:http/http.dart';
import 'package:project1/project1.dart' as project1;

void main() async {
  const nums = [2, 4, 5, 6, 9, 10, 90, 70];
  dynamic highestNum = 0;
  for (var num in nums) {
    if (num >= highestNum) {
      highestNum = num;
    }
  }
  print(highestNum);
  print(calculateAge());
  var response = await get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
  );
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data);
  } else {
    print("Error: ${response.statusCode}");
  }
}

int calculateAge() {
  int age = 23;
  int newAge = 50;
  return (age + newAge);
}
