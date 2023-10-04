import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_ex01/components/recipe_list_item.dart';
import 'package:flutter_recipe_ex01/components/recipe_menu.dart';
import 'package:flutter_recipe_ex01/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 1. 배경색 white 설정
      appBar: _buildRecipeAppBar(), // 2. 빈 AppBar 생성
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20), // 3. 왼/오 padding 주기
        child: ListView(
          // crossAxis 제거해야 함
          // 4. 위에서 아래로 내려가는 구조
          children: [
            // Column 형태의 위젯이 작성된다.
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0, // AppBar의 그림자 효과(숫자가 커질 수록 그림자가 크다)
      actions: [
        Icon(
          CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
