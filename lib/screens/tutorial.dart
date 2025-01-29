import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Patners extends StatefulWidget {
  const Patners({super.key});

  @override
  State<Patners> createState() => _PatnersState();
}

class _PatnersState extends State<Patners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: const Color.fromARGB(255, 245, 230, 248)),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 27,
                child: Icon(
                  color: Colors.black,
                  Icons.menu,
                  size: 20,
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 27,
                child: Icon(
                  color: Colors.black,
                  Icons.supervised_user_circle_outlined,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 27,
                child: Icon(
                  color: Colors.black,
                  Icons.search,
                  size: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Global patners",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    "Agency that build many amazing product to boost your business to next level"),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Companies",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text("Joined us",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300))
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "300+",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Companies",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text("Joined us",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300))
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "300+",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Companies",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text("Joined us",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300))
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "300+",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.verified_user),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
