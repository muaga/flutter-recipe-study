import 'package:flutter/material.dart';
import 'package:flutter_recipe_ex01/pages/recipe_page.dart';

void main() {
  runApp(MyApp());
}

// stl -> stateless 선택
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      // theme : 테마, 해당 폰트가 프로젝트 전체에 적용된다.
      home: RecipePage(),
    );
  }
}
