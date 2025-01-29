import 'package:designs/widgets/custom_input.dart';
import 'package:designs/widgets/custom_logo.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Skip'),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomLogoWidget(),
                  const Text(
                    'Create an account',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  const Text(
                    'Sign in to continue your journey',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
                  ),
                  CustomInput(header: 'Full Name', isPassword: false),
                  CustomInput(header: 'Phone/Email', isPassword: false),
                  CustomInput(header: 'Password', isPassword: true),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgotten Password',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 13),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize:
                              Size(MediaQuery.sizeOf(context).width, 50)),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      )),
                  const Align(
                      alignment: Alignment.center,
                      child: Text('______________or____________')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.apple),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.facebook),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.apple),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an acount? ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
