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

  List<String> radioTilesList = ['All Dates', 'Today', 'Tomorrow', 'Yesterday'];

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
      body: Column(
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
                  margin: EdgeInsets.only(top: h * 0.015, bottom: h * 0.015),
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
                  margin: EdgeInsets.only(top: h * 0.015, bottom: h * 0.015),
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
                      _showDatePickerDialog(context);
                    },
                  ),
                ),

                // Sort by DropDown
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF323e4c),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  margin: EdgeInsets.only(top: h * 0.015, bottom: h * 0.015),
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
                      _showDatePickerDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(selectedRoute),
          SizedBox(height: 10),
          Text('20960  6:25 PM - 5h15m - 11:40 PM'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Check seat availability'),
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
            child: Text(
              'Choose the date when the train starts from Gandhinagar Capital',
              style: TextStyle(
                fontSize: w * 0.045,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int tile = 0; tile < 4; tile++)
                RadioListTile<String>(
                  tileColor: Color(0xFF1e1f21),
                  selectedTileColor: Colors.black,
                  activeColor: Colors.blue,
                  title: Text(radioTilesList[tile]),
                  value: radioTilesList[tile],
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
