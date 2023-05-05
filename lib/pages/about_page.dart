import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Our E-Shopping App on Flutter is designed to cater to a broad age group, ranging from young adults to seniors. With its intuitive interface and easy-to-use features, the app is well-suited for users who are comfortable with mobile technology and online shopping. The app\'s design is geared towards simplicity and accessibility, making it an ideal choice for users who may not be tech-savvy or have limited experience with e-commerce platforms.That being said, we believe that our app can appeal to a wide range of users, regardless of age. With its user-friendly interface and comprehensive features, the app can provide a seamless shopping experience for users of all ages. Whether you are a college student looking for affordable fashion or a retiree searching for everyday essentials, our E-Shopping App on Flutter can meet your needs.\n\nTeam Members :- \n\n AMITESH KUMAR SINGH -21CBT1081 \n ARSHPREET SINGH -21CBT1067 \n AYUSH SRIVASTAV - 21CBT1053 \n KHUSHI - 21CBT1050 \n HARSHIT SAINI - 21CBT1052'
              ,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.left,),
            )
          ],
        ),
      ),
    );
  }
}
