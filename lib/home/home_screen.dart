import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List topBar = [
    'lib/images/tesla.png',
    'lib/images/roll.png',
    'lib/images/audi.png',
    'lib/images/benz.png',
    'lib/images/bmw.jpeg'
  ];
  List cars = [
    {
      'name': 'Porsche',
      'model': '911 GTE',
      'edition': '2023 sport edition',
      'image': 'lib/images/car3.png',
      'logo': 'lib/images/porse.jpeg'
    },
    {
      'name': 'Audi',
      'model': 'Turbo',
      'edition': '2025 sport edition',
      'image': 'lib/images/car2.png',
      'logo': 'lib/images/audi.png'
    },
    {
      'name': 'BMW',
      'model': '911 GTE',
      'edition': '2020 limited edition',
      'image': 'lib/images/car5.png',
      'logo': 'lib/images/bmw.jpeg'
    },
    {
      'name': 'Benx',
      'model': '911 GTE',
      'edition': '2023  edition',
      'image': 'lib/images/car1.png',
      'logo': 'lib/images/benz.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Wade ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              "Choose any car",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
            )
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.notification_important_rounded,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: topBar
                  .map((data) => CircleAvatar(
                        backgroundImage: AssetImage(data),
                      ))
                  .toList(),
            ),
            Expanded(child: ListView(children: cars.map((car)=> Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(car['logo']),
                              ),
                              title: Text(
                               car['name'],
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(
                                car["edition"],
                                style: TextStyle(fontSize: 13),
                              ),
                              trailing: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 7),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.grey.withOpacity(.3)),
                                  child: Text(
                                    'N550,000',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 7),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.grey.withOpacity(.3)),
                                  child: Text(
                                    'N550,000',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 7),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.grey.withOpacity(.3)),
                                  child: Text(
                                    'N550,000',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey.withOpacity(.3)),
                              child: Image.asset(car["image"]),
                            )
                          ],
                        ),
                      )).toList(),))
          ],
        ),
      ),
    );
  }
}
