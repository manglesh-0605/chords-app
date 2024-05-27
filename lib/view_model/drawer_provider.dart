import 'package:chords_app/view/auth/profile/profile.dart';
import 'package:chords_app/view/auth/profile/support.dart';
import 'package:flutter/material.dart';

import '../view/contact_us.dart';
import '../view/playlist/resources.dart';

class DrawerProvider extends ChangeNotifier {
  List drawerMenuList = [
    {
      "name": "My Profile",
      "icon": Icons.person,
      "class": const ProfileScreen(),
    },
    {
      "name": "Request a Song",
      "icon": Icons.request_page_rounded,
      "class": null,
    },
    {
      "name": "Help & Support",
      "icon": Icons.help,
      "class": null,
    },
    {
      "name": "Resources",
      "icon": Icons.description_rounded,
      "class": const ResourcesScreen(),
    },
    {
      "name": "Send Feedback",
      "icon": Icons.feedback_rounded,
      "class": null,
    },
    {
      "name": "About us",
      "icon": Icons.info_rounded,
      "class": null,
    },
    {
      "name": "Contact us",
      "icon": Icons.contact_support_rounded,
      "class": const ContactUsScreen(),
    },
    {
      "name": "Support us",
      "icon": Icons.support_rounded,
      "class": const SupportScreen(),
    },
    {
      "name": "Remove Ads",
      "icon": Icons.ads_click_rounded,
      "class": null,
    },
    {
      "name": "Logout",
      "icon": Icons.logout_rounded,
      "class": null,
    },
  ];
}
