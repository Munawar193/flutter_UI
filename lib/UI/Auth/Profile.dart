import 'package:fitnes_app/Model/KGcontainer.dart';
import 'package:fitnes_app/UI/Auth/Model/GenderAndDate.dart';
import 'package:flutter/material.dart';
import '../../Constant.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
              ),
              height: MediaQuery.of(context).size.height * 0.46,
              child: Image.asset('assets/images/ProfileAsset.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Let’s complete your profile",
              style: title_H2,
            ),
            Text('It will help us to know more about you!', style: SmallText),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 49,
              width: 315,
              decoration: BoxDecoration(
                color: BorderColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text('Choose Your Gender', style: titleField),
                ],
              ),
            ),
            DateContainer(
              title: 'Date of Birth',
              icon: Icons.date_range_outlined,
            ),
            WeightAndHeightContainer(
              title: 'Your Weight',
              icon: Icons.monitor_weight_outlined,
              titleKg: 'KG',
            ),
            WeightAndHeightContainer(
              title: 'Your Height',
              icon: Icons.height,
              titleKg: 'CM',
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 60,
                width: 315,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      BrandColors2,
                      BrandColors1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 18,
                      color: shadowColor.withOpacity(0.60),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: StyleRegister,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, left: 2),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                        color: WhiteColor,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                print("Tap!!");
              },
            )
          ],
        ),
      ),
    );
  }
}
