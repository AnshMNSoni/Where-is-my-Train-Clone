import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';
import 'package:app_clone/pages/traveljourney.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

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
            margin: EdgeInsets.only(left: w * 0.015, right: w * 0.015),
            child: TravelJourney(),
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
                      width: w * 0.62,
                      child: Text(
                        "General",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.048,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    SizedBox(width: w * 0.04),

                    Icon(Icons.arrow_drop_down),
                  ],
                ),

                SizedBox(height: w * 0.05),

                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      padding: EdgeInsets.only(
                        left: w * 0.1,
                        right: w * 0.1,
                        top: w * 0.025,
                        bottom: w * 0.025,
                      ),
                    ),
                    child: Text(
                      "Book tickets on Confirmtkt",
                      style: TextStyle(
                        fontSize: w * 0.053,
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
