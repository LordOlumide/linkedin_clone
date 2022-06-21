import 'package:flutter/material.dart';
import 'recommendation_card.dart';
import 'package:linkedin_clone/screens/my_network_screen/recommendations.dart';

class Recommendations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // The "Recommended for you" header
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              'Recommended for you',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),

          // The Recommendations
          for (int i = 0; i < recommendations.length; i++)
            RecommendationCard(
              background_pic: recommendations[i]
              ['background_pic'],
              profile_pic: recommendations[i]['profile_pic'],
              username: recommendations[i]['username'],
              user_info: recommendations[i]['user_info'],
            ),
        ],
      ),
    );;
  }
}
