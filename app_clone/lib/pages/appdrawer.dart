import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Map<Icon, String> drawerListTileItems = {
    Icon(Icons.update): "Update Timetable",
    Icon(Icons.language): "Language",
    Icon(Icons.location_city): "Change city",
    Icon(Icons.dark_mode): "Change light/dark mode",
    Icon(Icons.cancel): "Clear Recent Searches",
    Icon(Icons.settings): "Settings",
    Icon(Icons.share): "Share App",
    Icon(Icons.rate_review): "Rate Us",
    Icon(Icons.report): "Report Issue",
    Icon(Icons.settings_suggest_outlined): "Suggest a feature",
    Icon(Icons.notifications): "View all Alerts",
  };

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Drawer(
      elevation: 0,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.black,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.035,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: MediaQuery.of(context).size.height * 0.05,
                          backgroundImage: AssetImage("assets/app_logo.png"),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.028,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Where is my Train",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.055,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "from Google",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.035,
                        right: MediaQuery.of(context).size.height * 0.035,
                      ),
                      child: Text(
                        "Last Sync: 23-June-2025 10:55",
                        style: TextStyle(
                          color: Color(0xFFc0caef),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            for (int i = 0; i < 11; i++)
              Container(
                color: AppColors.drawerListTileColor,
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.035,
                ),
                child: ListTile(
                  leading: drawerListTileItems.keys.elementAt(i),
                  title: Text(
                    drawerListTileItems.values.elementAt(i),
                    style: TextStyle(
                      color: AppColors.drawerFontColor,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
