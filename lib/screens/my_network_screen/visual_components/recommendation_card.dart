import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String background_pic;
  final String profile_pic;
  final String username;
  final String user_info;

  RecommendationCard({
    required this.background_pic,
    required this.profile_pic,
    required this.username,
    required this.user_info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          width: 2,
          color: Colors.grey[200]!,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // The cancel button at the top right
          Row(),

          // The mid section
          Row(),

          // The bottom section
          Column(),
        ],
      ),
    );
  }
}
