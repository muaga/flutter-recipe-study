import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            // AspectRatio : 이미지 비율 정하기
            aspectRatio: 2 / 1,
            child: ClipRRect(
              // ClipRRect: 이미지 테두리에 곡선주기
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover, // 크기에 맞게 자르기 || fill : 크기에 맞게 줄이기(비율깨짐)
              ),
            ),
          ),
          SizedBox(height: 10),
          Text("Made Coffee", style: TextStyle(fontSize: 20)),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
