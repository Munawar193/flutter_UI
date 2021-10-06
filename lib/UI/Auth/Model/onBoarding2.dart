import 'package:fitnes_app/Constant.dart';
import 'package:fitnes_app/UI/Auth/Model/onBoarding3.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1 / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/FrameP2.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Burn",
                  style: title_H1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                  style: MediumText,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              padding: EdgeInsets.only(right: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: WhiteColor,
                      size: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.0, 0.8),
                        colors: <Color>[
                          BrandColors1,
                          BrandColors2,
                        ],
                      ),
                      shape: BoxShape.circle,
                      color: BrandColors1,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Onboarding3(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
