import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Tasks",
          style: TextStyle(
              color: Colors.white, fontSize: 42, fontWeight: FontWeight.w800),
        ),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.5),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.5),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/1.jpeg'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/2.jpeg'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/1.jpeg'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('lib/images/2.jpeg'),
                      ),
                      CircleAvatar(
                        child: Text('+5'),
                      ),
                      Spacer(),
                      Text('in 3 minutes')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'morning stand up with Team',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      const Text('Design Team'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.import_contacts,
                              color: Colors.red,
                            ),
                            Text('   Meet link')
                          ],
                        ),
                      ),
                      Spacer(),
                      Text('09:30-09:50AM')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Edits",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                  ),
                  Row(children: [
                    Icon(Icons.content_cut_rounded),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(.4)),
                      child: Text("Trello"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(.4)),
                      child: Text("Figma"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(.4)),
                      child: Text("Miro"),
                    ),
                    Spacer(),
                    Container(
                      child: Text("09:50-10:00AM"),
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Design Meet",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 27),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.share_location),
                          ),
                          Text(
                            "    Google Meet",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
