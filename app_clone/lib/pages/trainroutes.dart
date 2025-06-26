import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class TrainRoutePage extends StatefulWidget {
  const TrainRoutePage({super.key});

  @override
  State<TrainRoutePage> createState() => _TrainRoutePageState();
}

class _TrainRoutePageState extends State<TrainRoutePage> {
  String selectedDate = 'All Dates';
  String selectedRoute = 'GNC - Gandhinagar Capital → NVS - Navsari';

  List<String> dateTilesList = ['All Dates', 'Today', 'Tomorrow', 'Yesterday'];

  List<String> fareTilesList = [
    'GN - Unreserved',
    'SL - Sleeper',
    'CC - AC Chair Car',
    'EC - Executive Class',
    'FC - First Class',
    '2S - Second Sitting',
    '3S - Third Sitting',
    'Hide fares',
  ];

  List<String> sortByTilesList = ['Departure Time', 'Duration', 'Arrival Time'];

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left, size: w * 0.08),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search results",
              style: TextStyle(
                color: Colors.white,
                fontSize: w * 0.055,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Icon(Icons.share, size: w * 0.065, color: Colors.white),
                SizedBox(width: w * 0.02),
                Icon(Icons.more_vert, size: w * 0.08, color: Colors.white),
              ],
            ),
          ],
        ),
        backgroundColor: Color(0xFF1b1b1b),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xFF232d3c)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // All Dates DropDown
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF323e4c),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.only(
                        top: h * 0.015,
                        bottom: h * 0.015,
                      ),
                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.04),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        dropdownColor: Color(0xFF1c1c1c),
                        iconEnabledColor: Colors.white,
                        iconDisabledColor: Colors.grey.shade600,
                        value: 'All Date',
                        items: <String>['All Date'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.042,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {
                          _showDatePickerDialog(context);
                        },
                      ),
                    ),

                    // Show Fares DropDown
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF323e4c),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.only(
                        top: h * 0.015,
                        bottom: h * 0.015,
                      ),
                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.03),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        dropdownColor: Color(0xFF1c1c1c),
                        iconEnabledColor: Colors.white,
                        iconDisabledColor: Colors.grey.shade600,
                        value: 'Show Fares',
                        items: <String>['Show Fares'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.042,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {
                          _showFarePickerDialog(context);
                        },
                      ),
                    ),

                    // Sort by DropDown
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF323e4c),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.only(
                        top: h * 0.015,
                        bottom: h * 0.015,
                      ),
                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.03),
                      child: DropdownButton<String>(
                        underline: SizedBox.shrink(),
                        dropdownColor: Color(0xFF1c1c1c),
                        iconEnabledColor: Colors.white,
                        iconDisabledColor: Colors.grey.shade600,
                        value: 'Sort by',
                        items: <String>['Sort by'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.042,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {
                          _showSortByPickerDialog(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: h * 0.025, bottom: h * 0.025),
                width: w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: w * 0.02,
                      spreadRadius: w * 0.005,
                    ),
                  ],
                  color: Color(0xFF242d3c),
                ),
                child: Center(
                  child: Text(
                    selectedRoute,
                    style: TextStyle(
                      fontSize: w * 0.045,
                      fontWeight: FontWeight.w500,
                      color: AppColors.expressSectionFontColor,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(w * 0.04),
                decoration: BoxDecoration(color: Color(0xFF1e1f21)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.tagColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.only(
                              left: w * 0.009,
                              right: w * 0.009,
                            ),
                            child: Text(
                              "20960",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),

                          SizedBox(width: w * 0.02),

                          Text(
                            '6:25 PM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(width: w * 0.02),

                          Text(
                            '- 5h15m -',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: w * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          SizedBox(width: w * 0.02),

                          Text(
                            '11:40 PM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: h * 0.005),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Valsad InterCity SF Express",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          Text(
                            "Runs daily",
                            style: TextStyle(color: AppColors.tagColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(w * 0.03),
              width: w,
              decoration: BoxDecoration(color: Color(0xFF242d3c)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Check seat availability",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: w * 0.048,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: w * 0.04,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDatePickerDialog(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          titlePadding: EdgeInsetsGeometry.all(0),
          contentPadding: EdgeInsetsGeometry.all(0),
          backgroundColor: Color(0xFF1e1f21),
          title: Container(
            padding: EdgeInsets.only(
              left: w * 0.05,
              right: w * 0.05,
              top: h * 0.025,
              bottom: h * 0.025,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF222e3d),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(w * 0.05),
                topRight: Radius.circular(w * 0.05),
              ),
            ),
            child: Center(
              child: Text(
                'Choose the date when the train starts from Gandhinagar Capital',
                style: TextStyle(
                  fontSize: w * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int tile = 0; tile < dateTilesList.length; tile++)
                RadioListTile<String>(
                  tileColor: Color(0xFF1e1f21),
                  selectedTileColor: Colors.black,
                  activeColor: Colors.blue,
                  title: Text(dateTilesList[tile]),
                  value: dateTilesList[tile],
                  groupValue: selectedDate,
                  onChanged: (value) {
                    setState(() {
                      selectedDate = value!;
                    });
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
          actions: [
            Divider(color: Colors.grey.shade700, height: w * 0.02),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showFarePickerDialog(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          titlePadding: EdgeInsetsGeometry.all(0),
          contentPadding: EdgeInsetsGeometry.all(0),
          backgroundColor: Color(0xFF1e1f21),
          title: Container(
            padding: EdgeInsets.only(
              left: w * 0.05,
              right: w * 0.05,
              top: h * 0.025,
              bottom: h * 0.025,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF222e3d),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(w * 0.05),
                topRight: Radius.circular(w * 0.05),
              ),
            ),
            child: Center(
              child: Text(
                'Choose Fare Class',
                style: TextStyle(
                  fontSize: w * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int tile = 0; tile < fareTilesList.length; tile++)
                RadioListTile<String>(
                  tileColor: Color(0xFF1e1f21),
                  selectedTileColor: Colors.black,
                  activeColor: Colors.blue,
                  title: Text(fareTilesList[tile]),
                  value: fareTilesList[tile],
                  groupValue: selectedDate,
                  onChanged: (value) {
                    setState(() {
                      selectedDate = value!;
                    });
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
          actions: [
            Divider(color: Colors.grey.shade700, height: w * 0.02),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showSortByPickerDialog(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          titlePadding: EdgeInsetsGeometry.all(0),
          contentPadding: EdgeInsetsGeometry.all(0),
          backgroundColor: Color(0xFF1e1f21),
          title: Container(
            padding: EdgeInsets.only(
              left: w * 0.05,
              right: w * 0.05,
              top: h * 0.025,
              bottom: h * 0.025,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF222e3d),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(w * 0.05),
                topRight: Radius.circular(w * 0.05),
              ),
            ),
            child: Center(
              child: Text(
                'Sort by',
                style: TextStyle(
                  fontSize: w * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int tile = 0; tile < sortByTilesList.length; tile++)
                RadioListTile<String>(
                  tileColor: Color(0xFF1e1f21),
                  selectedTileColor: Colors.black,
                  activeColor: Colors.blue,
                  title: Text(sortByTilesList[tile]),
                  value: sortByTilesList[tile],
                  groupValue: selectedDate,
                  onChanged: (value) {
                    setState(() {
                      selectedDate = value!;
                    });
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
          actions: [
            Divider(color: Colors.grey.shade700, height: w * 0.02),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
