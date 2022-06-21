import 'package:flutter/material.dart';

class JobTile extends StatelessWidget {
  final String position;
  final String employer;
  final String location;
  final String physical_or_remote;
  final String time_since_post;
  final String company_logo;

  JobTile({
    required this.position,
    required this.employer,
    required this.location,
    required this.physical_or_remote,
    required this.time_since_post,
    required this.company_logo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // The job description
        Container(
          padding: EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Company Logo
                    Image.asset(
                      company_logo,
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),

                    // Main Information column
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Employment position
                            Text(
                              position,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),

                            // Employer
                            Text(
                              employer,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 2),

                            // Location
                            Text(
                              '$location ($physical_or_remote)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey[500],
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 6),

                            // Time since job posted
                            Text(
                              time_since_post,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blueGrey[500],
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 2),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // BookMark IconButton
              GestureDetector(
                onTap: () {},
                child: Icon(
                  size: 25,
                  Icons.bookmark_outline,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),

        // One-sided divider
        Container(
          margin: EdgeInsets.only(left: 68),
          height: 1,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
