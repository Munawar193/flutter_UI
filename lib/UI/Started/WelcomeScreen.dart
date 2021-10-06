import 'package:fitnes_app/Constant.dart';
import 'package:fitnes_app/UI/Auth/Model/onBoarding.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: <Color>[
              BrandColors1,
              BrandColors2,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Fitnest',
                            style: title,
                          ),
                          Text(
                            'X',
                            style: Costumetitle,
                          ),
                        ],
                      ),
                      Text(
                        'Everybody Can Train',
                        style: titleText,
                      ),
                    ],
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 8 / 9,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 315,
                decoration: BoxDecoration(
                  color: WhiteColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: BtnStart,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboarding(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
