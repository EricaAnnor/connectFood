import 'package:connectfoodfrontend/pages/edit.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF34A853)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('My Profile'),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: GestureDetector(
                    onTap: () {}, child: const Icon(Icons.settings, size: 30)),
              )
            ]),
        body: SingleChildScrollView(
          child: Column(children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 14.0, left: 24, bottom: 14),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg"),
                ),
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Text("Dr. Agbo Tetteh",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Edit()));
                        },
                        child: const Icon(
                          Icons.edit,
                          color: Color(0xFF34A853),
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28.0, top: 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Senior Researcher | Food Scientist',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28.0, top: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('University of Ghana',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal)),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0, top: 22),
                  child: Row(
                    children: [
                      Text("138 followers",
                          style: TextStyle(
                              color: Color(0xFF34A853),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 30),
                      Text("104 following",
                          style: TextStyle(
                              color: Color(0xFF34A853),
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0, top: 32, bottom: 20),
                  child: Text("Posts",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 4.0,
                  // mainAxisSpacing: 4.0,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              width: 1.0,
                              color: Color(0xFFD9D9D9)), // Left border
                          bottom:
                              BorderSide(width: 0.5, color: Color(0xFFD9D9D9)),
                          top: BorderSide(
                              width: 0.5, color: Color(0xFFD9D9D9) // Top border
                              ) // Bottom border
                          ),
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              )
            ]),
          ]),
        ));
  }
}
