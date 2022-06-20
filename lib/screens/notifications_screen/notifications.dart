import 'package:flutter/material.dart';
import 'visual_components/notification_action.dart';

List<Map<String, dynamic>> notifications = [
  {
    'profile_pic': 'images/profile_pic.jpg',
    'notification_string': 'Olubosede Olumide is wishing you happy birthday!',
    'action': NotificationActionButton(
      title: 'Reply',
      onPressed: () {},
    ),
    'time_since_notified': '3h',
  },
  {
    'profile_pic': 'images/gentle criminal profile pic.jpg',
    'notification_string': 'Gentle Criminal is hiring: Accomplice. See '
        'this and 2 other job recommendations.',
    'action': NotificationActionButton(
      title: 'View jobs',
      onPressed: () {},
    ),
    'time_since_notified': '2d',
  },
  {
    'profile_pic': 'images/godzilla_profile_pic.jpg',
    'notification_string': 'King Kong is just posted "Ready to rumble. '
        'Godzilla better watch out".',
    'time_since_notified': '1w',
  },
  {
    'profile_pic': 'images/Ainz oool gown.jpg',
    'notification_string': 'Momonga just posted, "Going to raid'
        ' the skeleton forest. Who\'s online?",',
    'time_since_notified': '1w',
  },
  {
    'profile_pic': 'images/megamind.jpeg',
    'notification_string': 'The thinker just posted "Lorem ipsum dolor sit'
        ' amet, consectetur adipiscing elit. '
        'Nam eget urna lacus. Quisque malesuada sollicitudin justo, quis mattis'
        ' felis elementum quis...".',
    'time_since_notified': '3m',
  },
  {
    'profile_pic': 'images/godzilla_profile_pic.jpg',
    'notification_string': 'King Kong is just posted "Ready to rumble. '
        'Godzilla better watch out".',
    'time_since_notified': '1w',
  },
  {
    'profile_pic': 'images/gentle criminal profile pic.jpg',
    'notification_string': 'Gentle Criminal is hiring: Accomplice. See '
        'this and 2 other job recommendations.',
    'action': NotificationActionButton(
      title: 'View jobs',
      onPressed: () {},
    ),
    'time_since_notified': '2d',
  },
  {
    'profile_pic': 'images/megamind.jpeg',
    'notification_string': 'The thinker just posted "Lorem ipsum dolor sit'
        ' amet, consectetur adipiscing elit. '
        'Nam eget urna lacus. Quisque malesuada sollicitudin justo, quis mattis'
        ' felis elementum quis...".',
    'time_since_notified': '3m',
  },
];