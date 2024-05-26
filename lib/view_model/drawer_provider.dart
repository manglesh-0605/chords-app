import 'package:flutter/material.dart';

class DrawerProvider with ChangeNotifier {
  List drawerMenuList = [
    {
      "name": "My Profile",
      "icon": Icons.person,
      "class": null,
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
      "class": null,
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
      "class": null,
    },
    {
      "name": "Support us",
      "icon": Icons.support_rounded,
      "class": null,
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
