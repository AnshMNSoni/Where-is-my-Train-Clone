import 'package:flutter/material.dart';

class TrainTrackingPage extends StatefulWidget {
  const TrainTrackingPage({super.key});

  @override
  State<TrainTrackingPage> createState() => _TrainTrackingPageState();
}

class _TrainTrackingPageState extends State<TrainTrackingPage> {
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    List<String> dropDownListItems = ['Today', 'Alarm', 'Coach', 'Share'];

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left, size: w * 0.08),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                "20960 - Valsad Intercity SF Express",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w * 0.045, // Scaled for responsiveness
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            SizedBox(width: w * 0.02),

            Icon(Icons.more_vert, size: w * 0.07, color: Colors.white),
          ],
        ),
        backgroundColor: const Color(0xFF1b1b1b),
      ),
      body: SafeArea(
        child: Container(
          width: w,
          child: Column(
            children: [
              // Dropdown Row
              Container(
                width: w,
                decoration: const BoxDecoration(color: Color(0xFF232d3c)),
                padding: EdgeInsets.symmetric(vertical: h * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (
                      int repeatitem = 0;
                      repeatitem < dropDownListItems.length;
                      repeatitem++
                    )
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                          decoration: BoxDecoration(
                            color: const Color(0xFF323e4c),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: DropdownButton<String>(
                            underline: const SizedBox.shrink(),
                            dropdownColor: const Color(0xFF1c1c1c),
                            iconEnabledColor: Colors.white,
                            iconDisabledColor: Colors.grey.shade600,
                            value: dropDownListItems[repeatitem],
                            items: <String>[dropDownListItems[repeatitem]].map((
                              String value,
                            ) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.04,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // Arrival/Departure Row
              Container(
                width: w,
                padding: EdgeInsets.symmetric(vertical: h * 0.015),
                decoration: const BoxDecoration(color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Arrival",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Day 1 - Jun 23, Mon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Departure",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
