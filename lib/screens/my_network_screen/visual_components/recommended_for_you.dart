import 'package:flutter/material.dart';
import 'recommendation_card.dart';
import 'package:linkedin_clone/screens/my_network_screen/recommendations.dart';

class Recommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 8, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // The "Recommended for you" header
              Padding(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 4),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: RecommendationCard(
                    background_pic: recommendations[i]['background_pic'],
                    profile_pic: recommendations[i]['profile_pic'],
                    username: recommendations[i]['username'],
                    user_info: recommendations[i]['user_info'],
                  ),
                ),

              // The "See all" button at the bottom
              Container(
                margin: EdgeInsets.only(top: 4),
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.white,
                  height: 40,
                  padding: EdgeInsets.fromLTRB(13, 13, 13, 17),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
