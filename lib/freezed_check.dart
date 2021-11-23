import 'dart:convert';

import 'user.dart';

void func() {
  // ユーザーを3つ作成する。user1 と user3 は同じ内容。
  User user1 = User('ogiyu1', 1);
  User user2 = User('ogiyu2', 2);
  User user3 = User('ogiyu1', 1);

  // 表示
  print('check1');
  print(user1);

  // 比較
  print('check2');
  if (user1 == user2) print('user1 と user2 は同じ人です');
  if (user1 == user3) print('user1 と user3 は同じ人です');

  // コピーをして新しいインスタンスを作成
  print('check3');
  User user4 = user1.copyWith(name: 'ogiyu1_copy');
  print(user1);
  print(user4);

  // 参照そのものを変えるのは OK
  print('check4');
  user2 = user3;
  print(user2);

  // immutable を破壊するので、以下のような使い方は NG
  // user1.name = 'unknown';
}

void func2() {
  // String->Map->User
  String jsonString = '{"name":"ogiyu","age":30}';
  User fromJsonUser = User.fromJson(json.decode(jsonString));
  print(fromJsonUser);

  // User->Map->String
  User toJsonUser = User('ogiyu', 40);
  Map<String, dynamic> jsonData = toJsonUser.toJson();
  print(jsonData);
}
