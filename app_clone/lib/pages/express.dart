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
    );
  }
}
