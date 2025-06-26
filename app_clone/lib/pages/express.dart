import 'package:app_clone/pages/trainroutes.dart';
import 'package:app_clone/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:app_clone/pages/traveljourney.dart';

class ExpressPage extends StatefulWidget {
  const ExpressPage({super.key});

  @override
  State<ExpressPage> createState() => _ExpressPageState();
}

class _ExpressPageState extends State<ExpressPage> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    Map<dynamic, dynamic> _trainNameList = {
      Container(
        decoration: BoxDecoration(
          color: AppColors.tagColor,
          borderRadius: BorderRadius.circular(2),
        ),
        padding: EdgeInsets.only(left: w * 0.009, right: w * 0.009),
        child: Text(
          "12929",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ): "Vadodara InterCity",
      Icon(Icons.podcasts, color: AppColors.tagColor, size: 32):
          "Station departure board",
    };

    Map<dynamic, dynamic> _searchList = {
      "20960": ["Valsad InterCity SuperFast", "GNC - NVS"],
      "20959": ["Vadnagar InterCity SuperFast", "NVS - GNC"],
      "12930": ["Valsad InterCity SuperFast", "BRC - NVS"],
      "19011": ["Dahod InterCity Express", "NVS - BRC"],
      "12929": ["Vadodara InterCity SuperFast", "BL - BRC"],
    };

    return Center(
      child: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.028,
          left: MediaQuery.of(context).size.width * 0.016,
          right: MediaQuery.of(context).size.width * 0.016,
          bottom: MediaQuery.of(context).size.width * 0.028,
        ),
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(w * 0.02),
                    decoration: BoxDecoration(
                      color: AppColors.notificationColor,
                      borderRadius: BorderRadius.circular(w * 0.08),
                    ),
                    child: Icon(Icons.notifications, size: w * 0.08),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.25,
                  child: Text(
                    "Tatkal Ticket Booking To Require Adhar Card Authentication",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: AppColors.expressSectionFontColor,
                      fontSize: w * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(Icons.arrow_right, size: 38),
              ],
            ),
          ),

          TravelJourney(),

          Center(
            child: Container(
              color: AppColors.containerColor,
              width: w,
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrainRoutePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  padding: EdgeInsets.only(top: w * 0.025, bottom: w * 0.025),
                ),
                child: Text(
                  "Find trains",
                  style: TextStyle(
                    fontSize: w * 0.053,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          Column(
            children: List.generate(_trainNameList.length, (index) {
              return Container(
                margin: EdgeInsets.only(top: w * 0.05),
                padding: EdgeInsets.symmetric(
                  horizontal: w * 0.02,
                  vertical: w * 0.015,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _trainNameList.keys.elementAt(index),
                    SizedBox(
                      width: w * 0.64,
                      child: Text(
                        _trainNameList.values.elementAt(index),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: w * 0.045,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),

                    // Search Button
                    SizedBox(
                      width: w * 0.11,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(EdgeInsets.zero),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                          backgroundColor: WidgetStateProperty.all(
                            AppColors.buttonColor,
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: w * 0.06,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),

          Container(
            padding: EdgeInsets.only(
              left: w * 0.02,
              right: w * 0.02,
              top: w * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.grey.shade700),
                right: BorderSide(color: Colors.grey.shade700),
                top: BorderSide(color: Colors.grey.shade700),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SEARCH HISTORY", style: TextStyle(fontSize: 16)),

                SizedBox(height: w * 0.05),

                for (int item = 0; item < 5; item++)
                  Container(
                    padding: EdgeInsets.only(bottom: w * 0.02, top: w * 0.02),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade700),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          padding: EdgeInsets.only(
                            left: w * 0.009,
                            right: w * 0.009,
                          ),
                          child: Text(
                            _searchList.keys.elementAt(item),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(
                          width: w * 0.4,
                          child: Text(
                            _searchList.values.elementAt(item)[0],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(width: w * 0.033),

                        Text(
                          _searchList.values.elementAt(item)[1],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
