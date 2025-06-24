import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class TravelJourney extends StatefulWidget {
  const TravelJourney({super.key});

  @override
  State<TravelJourney> createState() => TravelJourneyState();
}

class TravelJourneyState extends State<TravelJourney> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    Map _cityList = {"GNC": "Gandhinagar Capital", "": "", "NVS": "Navsari"};

    return Container(
      padding: EdgeInsets.only(top: w * 0.05, bottom: w * 0.05),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
      ),
      margin: EdgeInsets.only(top: w * 0.02),
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
                  Icon(Icons.circle, size: 4, color: Colors.grey.shade600),

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
    );
  }
}
