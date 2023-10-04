import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  // 컴포넌트 함수
  Widget _buildMenuItem(IconData mIcon, String text) {
    // icon의 타입 = IconData
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        // 컨테이너 꾸미는 속성
        borderRadius: BorderRadius.circular(30), // 컨테이너 테두리를 둥글게
        border: Border.all(color: Colors.black12), // 컨테이너의 테두리 속성
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(text, style: TextStyle(color: Colors.black87)),
        ],
      ),
    );
  }
}
