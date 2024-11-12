import 'package:chords_app/view/about_us.dart';
import 'package:chords_app/view/auth/profile/profile.dart';
import 'package:chords_app/view/auth/profile/support.dart';
import 'package:chords_app/view/home.dart';
import 'package:flutter/material.dart';

import '../view/contact_us.dart';
import '../view/playlist/resources.dart';
import '../view/request_song.dart';

class DrawerProvider extends ChangeNotifier {
  List drawerMenuList = [
    {
      "name": "Home",
      "icon": Icons.home,
      "class": const HomeScreen(),
    },
    {
      "name": "Artists",
      "icon": Icons.person,
      "class": null,
    },
    {
      "name": "Collections",
      "icon": Icons.feedback_rounded,
      "class": const ResourcesScreen(),
    },
    {
      "name": "Search Chords",
      "icon": Icons.request_page_rounded,
      "class": null
    },
    {
      "name": "Request a Song",
      "icon": Icons.request_page_rounded,
      "class": const RequestSong(),
    },
    {
      "name": "Help & Support",
      "icon": Icons.help,
      "class": null,
    },
    {
      "name": "About us",
      "icon": Icons.info_rounded,
      "class": const AboutUs(),
    },
    {
      "name": "Contact us",
      "icon": Icons.contact_support_rounded,
      "class": const ContactUsScreen(),
    },
    {
      "name": "Contribute",
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
