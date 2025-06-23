import 'package:app_clone/pages/express.dart';
import 'package:app_clone/pages/pnr.dart';
import 'package:app_clone/pages/tickets.dart';
import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int selectBottomNavIndex = 0;
  PageController bottomNavPageController = PageController();

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

  // Tab Controller Functionality
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Bottom Navigation Funcionality
  void onTapBottomNavItem(int index) {
    setState(() {
      selectBottomNavIndex = index;
    });
    bottomNavPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                                  fontSize: 22,
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
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Where is my Train",
              style: TextStyle(
                color: AppColors.appBarFontColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(Icons.mic, size: 28, color: AppColors.appBarFontColor),
          ],
        ),
        backgroundColor: AppColors.appbarColor,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.width * 0.03,
                bottom: MediaQuery.of(context).size.width * 0.03,
              ),
              decoration: BoxDecoration(color: AppColors.appbarColor),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: AppColors.tabBarHoverColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                tabs: [
                  Tab(text: "EXPRESS"),
                  Tab(text: "METRO"),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: ExpressPage()),
                Center(
                  child: Text(
                    "Metro Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: AppColors.appbarColor,
        height: MediaQuery.of(context).size.width * 0.145,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PNRPage()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white, size: 24),
                  SizedBox(width: 6),
                  Text(
                    "PNR",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.03,
              ),
              color: Colors.grey.shade500,
              width: 1,
              height: MediaQuery.of(context).size.width,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TicketsPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.confirmation_num_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Tickets",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
