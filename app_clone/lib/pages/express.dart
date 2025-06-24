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
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.notificationColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.notifications, size: 32),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.height * 0.025),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.3,
                  child: Text(
                    "Tatkal Ticket Booking To Require Adhar Card Authentication",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: AppColors.expressSectionFontColor,
                      fontSize: 18,
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
                onPressed: () {},
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

          for (int items = 0; items < 2; items++)
            Container(
              margin: EdgeInsets.only(top: w * 0.05),
              padding: EdgeInsets.only(
                left: w * 0.02,
                right: w * 0.02,
                top: w * 0.015,
                bottom: w * 0.015,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade700),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _trainNameList.keys.elementAt(items),

                  Container(
                    width: w * 0.64,
                    child: Text(
                      _trainNameList.values.elementAt(items),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  // Search Button
                  Container(
                    width: w * 0.11,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.zero),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.buttonColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.search, color: Colors.white, size: 24),
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
