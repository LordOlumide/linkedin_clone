import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_2.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';
import 'jobs.dart';
import 'package:linkedin_clone/screens/jobs_screen/visual_components/'
    'job_tile.dart';

class JobsScreen extends StatelessWidget {
  static const screen_id = 'jobs_screen';

  PreferredSizeWidget appbar = CustomAppBar2();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      bottomNavigationBar: navigationBar,
      body: Column(
        children: [
          // My Jobs button at the top
          MaterialButton(
            elevation: 1,
            color: Colors.white,
            height: 50,
            padding: EdgeInsets.all(13),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Jobs',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See all (0)',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          // ListView showing other components
          Expanded(
            child: ListView(
              children: [
                // "Recommended for you" section
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // "Recommended for you" Header
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          'Recommended for you',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      // Infinitely loading recommended jobs list
                      Column(
                        children: [
                          for (int index = 0; index < jobs.length; index++)
                            JobTile(
                              position: jobs[index]['position'],
                              employer: jobs[index]['employer'],
                              location: jobs[index]['location'],
                              physical_or_remote: jobs[index]
                              ['physical_or_remote'],
                              time_since_post: jobs[index]['time_since_post'],
                              company_logo: jobs[index]['company_logo'],
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
