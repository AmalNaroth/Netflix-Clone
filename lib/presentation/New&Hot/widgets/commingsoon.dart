import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size MediaSize = MediaQuery.sizeOf(context);
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 400,
          child: Column(
            children: [
              Text(
                "FEB",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Text(
                "11",
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaSize.width - 50,
          height: 400,
          child: Container(
            //color: Colors.red,
            width: double.infinity,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                Row(
                  children: [
                    Text(
                      "LAST KINGDOM",
                      style: GoogleFonts.artifika(
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -1)),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButton(
                          icon: CupertinoIcons.bell,
                          title: "Remind me",
                          fontsize: 15,
                          size: 20,
                        ),
                        sizedBoxW10,
                        CustomButton(
                          icon: CupertinoIcons.info,
                          title: "Info",
                          fontsize: 15,
                          size: 20,
                        ),
                        sizedBoxW10
                      ],
                    ),
                  ],
                ),
                Text("Comming on Friday"),
                SizedBoxH10,
                Text("Last Kindom"),
                SizedBoxH10,
                Text(
                    "Landing the lead in the school musical is a dream come true jodi, until the pressure sens her confidence -- and her relationship -- in to a tail spin"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
