import 'package:flutter/material.dart';

class Puff extends StatelessWidget {
  const Puff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            child: const Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Puff',
                  style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.w900,
                      color: Colors.green),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Botique',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 195,
              left: 10,
              right: 10,
              child: Container(
                height: MediaQuery.sizeOf(context).height - 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/images/puuf2.png'),
                        fit: BoxFit.cover)),
              )),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.5, 0.75],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black])),
            child: Column(
              children: [
                const Expanded(flex: 3, child: const SizedBox.shrink()),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Elevate your style',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      
                        const Text(
                          'Discover innovatice, padded leather jacket for comfort and style',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.sizeOf(context).width-40, 50)),
                            onPressed: () {},
                            child: Text(
                              'Quick shop access',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
