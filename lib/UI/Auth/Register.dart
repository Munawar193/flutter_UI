import 'package:fitnes_app/Model/RoundedInputField.dart';
import 'package:fitnes_app/Model/RoundedInputPassworField.dart';
import 'package:fitnes_app/UI/Auth/Profile.dart';
import 'package:flutter/material.dart';
import '../../Constant.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hey there,",
                      style: title_H4,
                    ),
                    Text(
                      "Create an Account",
                      style: title_H2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RoundedinputFeild(
                hintext: 'First Name',
                icon: Icons.person_outlined,
                onChanged: (String value) {},
              ),
              RoundedinputFeild(
                hintext: 'Last Name',
                icon: Icons.person_outlined,
                onChanged: (String value) {},
              ),
              RoundedinputFeild(
                hintext: 'Email',
                icon: Icons.email_outlined,
                onChanged: (String value) {},
              ),
              RoundedinputPasswordField(
                onChanged: (String value) {},
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50, top: 5, right: 10),
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        width: 1,
                        color: greyColor1,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'By continuing you accept our Privacy Policy  and Term of Use',
                        style: SmallText,
                      ),
                    ),
                  )
                ],
              ),
              BtnRegister(),
              OrContainer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 110, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(13),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/logo-google.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        color: WhiteColor,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 4,
                            spreadRadius: -1,
                            color: BorderColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/logo-facebook.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        color: WhiteColor,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 4,
                            spreadRadius: -1,
                            color: BorderColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: MediumText,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: BrandColors2,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrContainer extends StatelessWidget {
  const OrContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 45,
          ),
          height: 1.5,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
            color: greyColor2,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Text(
          "Or",
          style: TextStyle(
            color: greyColor1,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 45),
          height: 1.5,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
            color: greyColor2,
            borderRadius: BorderRadius.circular(30),
          ),
        )
      ],
    );
  }
}

class BtnRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: 67,
          bottom: 20,
        ),
        height: 60,
        width: 315,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              BrandColors2,
              BrandColors1,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "Register",
            style: StyleRegister,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
      },
    );
  }
}
