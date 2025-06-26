import 'package:flutter/material.dart';
import 'package:app_clone/utils/colors.dart';

class PNRPage extends StatefulWidget {
  const PNRPage({super.key});

  @override
  State<PNRPage> createState() => _PNRPageState();
}

class _PNRPageState extends State<PNRPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left, size: w * 0.08),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "PNR",
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: w * 0.02,
          vertical: h * 0.018,
        ),
        child: Column(
          children: [
            Container(
              color: AppColors.containerColor,
              height: MediaQuery.of(context).size.height * 0.2,
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.025,
                vertical: h * 0.01,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Enter Your PNR No',
                            labelStyle: TextStyle(fontSize: w * 0.05),
                            border: UnderlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.cancel_outlined,
                              size: w * 0.06,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.03),
                      Icon(Icons.mic, size: w * 0.08),
                    ],
                  ),
                  SizedBox(height: h * 0.015),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("PNR Entered: ${textController.text}");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        padding: EdgeInsets.symmetric(vertical: h * 0.02),
                      ),
                      child: Text(
                        "Find PNR Status",
                        style: TextStyle(
                          fontSize: w * 0.045,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.05),
            Container(
              color: AppColors.containerColor,
              height: MediaQuery.of(context).size.height * 0.07,
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.025,
                vertical: h * 0.01,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.confirmation_num_outlined,
                    color: AppColors.tagColor,
                    size: 32,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Your tickets on Confirmtkt",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.tagColor,
                          fontSize: w * 0.046,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.13),
                      Icon(
                        Icons.arrow_right,
                        color: AppColors.tagColor,
                        size: 36,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
