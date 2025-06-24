import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    Map _cityList = {"GNC": "Gandhinagar Capital", "": "", "NVS": "Navsari"};

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left, size: w * 0.08),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "TICKETS",
              style: TextStyle(
                color: Colors.white,
                fontSize: w * 0.05,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.more_vert, size: w * 0.07, color: Colors.white),
          ],
        ),
        backgroundColor: AppColors.appbarColor,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: w * 0.05, bottom: w * 0.05),
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            ),
            margin: EdgeInsets.only(
              top: w * 0.035,
              left: w * 0.02,
              right: w * 0.02,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.grey.shade600,
                        size: 16,
                      ),

                      SizedBox(height: w * 0.01),

                      for (int dot = 0; dot <= 9; dot++)
                        Icon(
                          Icons.circle,
                          size: 4,
                          color: Colors.grey.shade600,
                        ),

                      Icon(Icons.arrow_downward, color: Colors.grey.shade600),

                      SizedBox(height: w * 0.01),

                      Icon(
                        Icons.circle_outlined,
                        color: Colors.grey.shade600,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    for (int item = 0; item <= 2; item++) ...[
                      if (item % 2 == 0)
                        Row(
                          spacing: w * 0.23,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: w * 0.55,
                              child: Row(
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
                                      _cityList.keys.elementAt(item),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: w * 0.02),

                                  Container(
                                    child: Text(
                                      _cityList.values.elementAt(item),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.cancel_outlined, size: 20),
                          ],
                        )
                      else
                        Stack(
                          alignment: AlignmentGeometry.directional(0.7, 0),
                          children: [
                            Container(
                              width: w * 0.8,
                              height: w * 0.002,
                              color: Colors.grey.shade600,
                            ),
                            Container(
                              width: w * 0.13,
                              height: w * 0.13,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey.shade600,
                                  width: 1,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: w * 0.065,
                                backgroundColor: AppColors.containerColor,
                                child: Icon(
                                  Icons.compare_arrows,
                                  color: Colors.greenAccent,
                                  size: w * 0.08,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ],
                ),
              ],
            ),
          ),

          // Custom Divider()
          Container(
            margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
            width: w,
            height: w * 0.002,
            color: Colors.grey.shade600,
          ),

          Container(
            color: AppColors.containerColor,
            margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
            padding: EdgeInsets.all(w * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.tagColor,
                      size: 14,
                    ),

                    SizedBox(width: w * 0.015),

                    Text(
                      "Journey Date",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: w * 0.02),

                Text(
                  "23 June, Monday",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Cutom Divider()
          Container(
            margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
            width: w,
            height: w * 0.002,
            color: Colors.grey.shade600,
          ),

          Container(
            color: AppColors.containerColor,
            margin: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
            padding: EdgeInsets.all(w * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.confirmation_num_outlined,
                      color: AppColors.tagColor,
                      size: 15,
                    ),

                    SizedBox(width: w * 0.015),

                    Text(
                      "Quota",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: w * 0.02),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.tagColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.only(
                        top: w * 0.008,
                        bottom: w * 0.008,
                        left: w * 0.03,
                        right: w * 0.03,
                      ),
                      child: Text(
                        "GN",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),

                    SizedBox(width: w * 0.02),

                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: w * 0.002,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      width: w * 0.64,
                      child: Text(
                        "General",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    SizedBox(width: w * 0.04),

                    Icon(Icons.arrow_drop_down),
                  ],
                ),

                SizedBox(height: w * 0.03),

                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      padding: EdgeInsets.only(
                        left: w * 0.25,
                        right: w * 0.25,
                        top: w * 0.025,
                        bottom: w * 0.025,
                      ),
                    ),
                    child: Text(
                      "Find PNR Status",
                      style: TextStyle(
                        fontSize: w * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.containerColor,
            ),
            margin: EdgeInsets.only(
              top: w * 0.02,
              left: w * 0.02,
              right: w * 0.02,
            ),
            padding: EdgeInsets.only(top: w * 0.02, bottom: w * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Your tickets on Confirmtkt",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.tagColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.13),
                Icon(Icons.arrow_right, color: AppColors.tagColor, size: 36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
