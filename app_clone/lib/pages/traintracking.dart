import 'package:app_clone/utils/colors.dart';
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

    Map<dynamic, dynamic> trackingDetails = {
      ["  5:00 PM", "  5:03 PM"]: {
        ["Vadnagar", "0 km Platform", "1"]: ["5:00 PM", "5:03 PM"],
      },

      ["  5:11 PM", "  5:14 PM"]: {
        ["Visnagar", "13 km Platform", "1"]: ["5:13 PM", "5:19 PM"],
      },

      ["  5:29 PM", "  5:31 PM"]: {
        ["Mahesana Junction", "33 km Platform", "7"]: ["5:31 PM", "5:38 PM"],
      },

      ["  6:23 PM", "  6:25 PM"]: {
        ["Gandhinagar Capital", "95 km Platform", "1"]: ["6:25 PM", "6:38 PM"],
      },

      ["  7:25 PM", "  7:16 PM"]: {
        ["Ahmedabad Junction", "124 km Platform", "7"]: ["7:30 PM", "7:46 PM"],
      },

      ["  8:21 PM", "  8:27 PM"]: {
        ["Nadiad Junction", "170 km Platform", "1"]: ["8:23 PM", "8:32 PM"],
      },

      ["  8:38 PM", "  8:47 PM"]: {
        ["Anand Junction", "189 km Platform", "4"]: ["8:40 PM", "8:51 PM"],
      },

      ["  9:15 PM", "  9:22 PM"]: {
        ["Vadodara Junction", "224 km Platform", "1"]: ["9:20 PM", "9:32 PM"],
      },

      ["10:11 PM", "10:21 PM"]: {
        ["Bharuch Junction", "295 km Platform", "4"]: ["10:13 PM", "10:23 PM"],
      },

      ["11:14 PM", "11:17 PM"]: {
        ["Surat", "354 km Platform", "2"]: ["11:12 PM", "11:20 PM"],
      },

      ["11:40 PM", "11:42 PM"]: {
        ["Navsari", "384 km Platform", "2"]: ["11:42 PM", "11:50 PM"],
      },
    };

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
      body: SingleChildScrollView(
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

              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: h * 0.02,
                    bottom: h * 0.02,
                    left: w * 0.02,
                    right: w * 0.02,
                  ),
                  child: Column(
                    children: [
                      for (
                        int track = 0;
                        track < trackingDetails.keys.length;
                        track++
                      )
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      trackingDetails.keys.elementAt(track)[0],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    SizedBox(height: h * 0.01),

                                    Text(
                                      trackingDetails.keys.elementAt(track)[1],
                                      style: TextStyle(
                                        color: Color(0xFFb65757),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        if (track == 0)
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1e4c66),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  w * 0.02,
                                                ),
                                                topRight: Radius.circular(
                                                  w * 0.02,
                                                ),
                                              ),
                                            ),
                                            height: h * 0.25,
                                            width: w * 0.045,
                                          )
                                        else if (track ==
                                            trackingDetails.length - 1)
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1e4c66),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                  w * 0.02,
                                                ),
                                                bottomRight: Radius.circular(
                                                  w * 0.02,
                                                ),
                                              ),
                                            ),
                                            height: h * 0.15,
                                            width: w * 0.045,
                                          )
                                        else
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1e4c66),
                                            ),
                                            height: h * 0.25,
                                            width: w * 0.045,
                                          ),

                                        Positioned(
                                          top: h * 0.003,
                                          child: Icon(
                                            Icons.circle,
                                            color: Color(0xFFa0c9ff),
                                            size: w * 0.035,
                                          ),
                                        ),

                                        if (track == 0)
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: Image.asset(
                                                "assets/app_logo.png",
                                                height: w * 0.12,
                                                width: w * 0.12,
                                              ),
                                            ),
                                          )
                                        else
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Container(
                                              color: Colors.transparent,
                                              height: w * 0.12,
                                              width: w * 0.12,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      trackingDetails.values
                                          .elementAt(track)
                                          .keys
                                          .elementAt(0)[0],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: w * 0.045,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          trackingDetails.values
                                              .elementAt(track)
                                              .keys
                                              .elementAt(0)[1],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),

                                        SizedBox(width: w * 0.015),

                                        Container(
                                          padding: EdgeInsets.only(
                                            left: w * 0.015,
                                            right: w * 0.015,
                                            top: w * 0.01,
                                            bottom: w * 0.01,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF211f1a),
                                            border: Border.all(
                                              color: Colors.grey.shade500,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                trackingDetails.values
                                                    .elementAt(track)
                                                    .keys
                                                    .elementAt(0)[2],
                                                style: TextStyle(
                                                  color: AppColors.tagColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(width: w * 0.01),
                                              Icon(
                                                Icons.edit,
                                                color: AppColors.tagColor,
                                                size: 14,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Text(
                                  trackingDetails.values.elementAt(
                                    track,
                                  )[trackingDetails.values
                                      .elementAt(track)
                                      .keys
                                      .elementAt(0)][0],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                SizedBox(height: h * 0.01),

                                Text(
                                  trackingDetails.values.elementAt(
                                    track,
                                  )[trackingDetails.values
                                      .elementAt(track)
                                      .keys
                                      .elementAt(0)][1],
                                  style: TextStyle(
                                    color: Color(0xFFb65757),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
