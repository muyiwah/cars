import 'package:action_slider/action_slider.dart';
import 'package:designs/auth/login.dart';
import 'package:designs/widgets/custom_logo.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomSheet: 
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
         child: ActionSlider.standard(
          toggleColor: Colors.blue,
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.car_rental,
            color: Colors.white,
          ),
          child: const Text('Get Started'),
          action: (controller) async {
            controller.loading(); //starts loading animation
            await Future.delayed(const Duration(seconds: 3),(){
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            });
            controller.success(); //starts success animation
          },
               ),
       ),
      body: Container(
        // padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomLogoWidget(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Discover the Art\nof Luxury Car',
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.w700, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Stack(
              children: [
                Container(
                  height: 340,
                ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Container(
                    height: 340,
                    child: Image.asset(
                      'lib/images/tesla2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),


         
          ],
        ),
      ),
    );
  }
}


