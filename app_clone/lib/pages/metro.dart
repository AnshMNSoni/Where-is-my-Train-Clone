import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class MetroPage extends StatefulWidget {
  const MetroPage({super.key});

  @override
  State<MetroPage> createState() => _MetroPageState();
}

class _MetroPageState extends State<MetroPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    final w = MediaQuery.of(context).size.width;
    List<String> _cityList = ["From Station", "", "To Station"];

    return Padding(
      padding: EdgeInsets.all(w * 0.02),
      child: Column(
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
                                    child: Text(
                                      _cityList[item],
                                      style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
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

          SizedBox(height: w * 0.03),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF292a2c),
            ),
            padding: EdgeInsets.only(
              left: w * 0.03,
              right: w * 0.03,
              top: w * 0.05,
              bottom: w * 0.075,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Station-Indicator at",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),

                SizedBox(height: w * 0.03),

                TextField(
                  controller: textController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Station name',
                    labelStyle: TextStyle(
                      fontSize: w * 0.05,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFF141414),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
